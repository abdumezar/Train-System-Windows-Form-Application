using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
	public partial class PassengerDashBoard : Form
	{
        public PassengerDashBoard()
        {
			InitializeComponent();
			FillTripsDropDown();
		}
		public string UserEmail { get; set; }
        public int TripId { get; set; }


        public void FillTripsDropDown()
		{
			SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");

			SqlCommand command = new SqlCommand(@"SELECT Trips.*, Trains.TrainModel
                                      FROM Trips
                                      JOIN Trains ON Trips.TrainId = Trains.TrainId", con);
			SqlDataReader reader;
			try
			{
				con.Open();
				reader = command.ExecuteReader();
				while (reader.Read())
				{
					string source = reader.GetString(4);
					string dest = reader.GetString(5);
					var DateTime = reader.GetDateTime(2);
					decimal Cost = reader.GetDecimal(3);
					string trainModel = reader.GetString(6);
					string tripInfo = source + " - " + dest + " - " + DateTime + " - " + Cost + " - " + trainModel;
					AllTripsDropDown.Items.Add(tripInfo);

				}
			}
			catch (Exception ex)
			{

				MessageBox.Show(ex.Message);
			}
		}

		private int AvaliableSeatsByTripId(int tripId)
		{
			int seats = -1;
			SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
			SqlCommand command = new SqlCommand($@"select COUNT(S.SeatId)
												from Trips T, Seats S
												where T.TrainId = S.TrainId and S.IsOccupatedByUserId is null and TripId = {tripId}", con);
			SqlDataReader reader;
            try
            {
                con.Open();
                reader = command.ExecuteReader();

				if (reader.Read())
				{
					seats = reader.GetInt32(0);
					return seats;
				}

            }
			catch (Exception ex)
			{

			}
			return 0;
		}

		private void AllTripsDropDown_SelectedIndexChanged(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");


			string selectedTrip = AllTripsDropDown.SelectedItem.ToString();
			string[] tripInfoParts = selectedTrip.Split(new string[] { " - " }, StringSplitOptions.None);
			string source = tripInfoParts[0];
			string dest = tripInfoParts[1];
			var dateTime = tripInfoParts[2];
			var cost= tripInfoParts[3];


			SqlCommand command = new SqlCommand($@"SELECT Trips.*, Trains.TrainModel, COUNT(Seats.SeatId) AS AvailableSeats
			                                    FROM Trips
			                                    JOIN Trains ON Trips.TrainId = Trains.TrainId 
												JOIN Seats ON Trips.TrainId = Seats.TrainId
												where Trips.Source = @Source
												AND Trips.Destination = @dest
												AND Trips.TripDateTime = @dateTime
												AND Trips.Cost = @cost
												GROUP BY Trips.TripId, Trips.Source, Trips.Destination, Trips.TripDateTime, Trips.Cost, Trains.TrainModel, Trips.TrainId;", con);

			command.Parameters.AddWithValue("@Source", source);
			command.Parameters.AddWithValue("@dest", dest);
			command.Parameters.AddWithValue("@dateTime", dateTime);
			command.Parameters.AddWithValue("@Cost", cost);
			SqlDataReader reader;
			try
			{
				con.Open();
				reader = command.ExecuteReader();
				while (reader.Read())
				{
					TripId = reader.GetInt32(0);
					source = reader.GetString(4);
					dest = reader.GetString(5);
					var DateTime = reader.GetDateTime(2);
					decimal Cost = reader.GetDecimal(3);
					string trainModel = reader.GetString(6);
					int AvilableSeats = reader.GetInt32(7);

					From.Text = source;
					To.Text = dest;
					DateTimeBox.Text = DateTime.ToString();
					CostBox.Text = Cost.ToString();
					TrainModel.Text = trainModel.ToString();
					NumberOfAvilibleSeats.Text = AvaliableSeatsByTripId(TripId).ToString();

                }
			}
			catch (Exception ex)
			{

				MessageBox.Show(ex.Message);
			}

		}


        public int UserId { get; set; }=0;
        private void GetCurrentUserId()
		{
			
			SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
			con.Open();
			SqlCommand command = new SqlCommand("Select UserId from Users where Email = @Email",con);
			command.Parameters.AddWithValue("@Email", UserEmail);

			SqlDataReader reader = command.ExecuteReader();
			if (reader.Read())
			{
				UserId = reader.GetInt32(0);
			}
			con.Close();
		
			
		}

		private void BookBtn_Click(object sender, EventArgs e)
		{
			GetCurrentUserId();
			
			if(AvaliableSeatsByTripId(TripId) < NomberOfSeats.Value || NomberOfSeats.Value <= 0)
			{
                MessageBox.Show("Sorry, There is no enough seats");
                return;
            }

			SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
			con.Open();
			SqlCommand cmd = new SqlCommand($@"Declare @NumOfSeats INT = {NomberOfSeats.Value}
											Declare @TripID INT = {TripId}
											Declare @UserID INT = {UserId}
											
											insert into Booked_Trips
											values(@NumOfSeats, @UserID, @TripID )
											
											Update top (@NumOfSeats) Seats
											Set IsOccupatedByUserId = @UserID
											Where IsOccupatedByUserId is null and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
											",con);
			try
			{

			  cmd.ExecuteNonQuery();
			  MessageBox.Show("Ticket bookoed Succefully");
			}
			catch (Exception)
			{

				MessageBox.Show("You booked this trip before :)");
			}
			con.Close();
		}


		private void button1_Click(object sender, EventArgs e)
		{
			this.Close();
			Form1 form1 = new Form1();
			form1.Show();
		}

		private void button2_Click(object sender, EventArgs e)
		{
			GetCurrentUserId();
            this.Hide();
            UpdatedPassanger updatedPassanger = new UpdatedPassanger(UserId);
			updatedPassanger.Show();
			

		}

        private void button3_Click(object sender, EventArgs e)
        {
            GetCurrentUserId();
            this.Hide();
			ReservedTripsByUser tripsByUser = new ReservedTripsByUser(UserId, UserEmail);
			tripsByUser.Show();
        }
    }
}
