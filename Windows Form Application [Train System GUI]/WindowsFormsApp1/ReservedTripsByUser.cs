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
    public partial class ReservedTripsByUser : Form
    {
        private readonly string userEmail;

        public int UserId { get; set; }
        public ReservedTripsByUser(int userId, string userEmail)
        {
            InitializeComponent();
            UserId = userId;
            this.userEmail = userEmail;
            FillTripsDropDown();
        }
        public int TripId { get; set; }

        public void FillTripsDropDown()
        {
            AllTripsDropDown.Items.Clear();
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");

            SqlCommand command = new SqlCommand($@"Declare @UserID INT = {UserId}
                                                select T.Source, T.Destination, T.Cost, BT.NumberOfSeates , T.TripDateTime, Train.TrainModel
                                                From Trips T, Trains Train, Booked_Trips BT
                                                Where T.TrainId = Train.TrainId and BT.TripId = T.TripId and BT.UserId = @UserID", con);
            SqlDataReader reader;
            try
            {
                con.Open();
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    string source = reader.GetString(0);
                    string dest = reader.GetString(1);
                    var DateTime = reader.GetDateTime(4);
                    decimal Cost = reader.GetDecimal(2);
                    string trainModel = reader.GetString(5);
                    string tripInfo = source + " - " + dest + " - " + DateTime + " - " + Cost + " - " + trainModel;
                    AllTripsDropDown.Items.Add(tripInfo);

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private int ResearvedSeatsForUserByTripId(int tripId)
        {
            int seats = -1;
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
            SqlCommand command = new SqlCommand($@"select NumberOfSeates
                                                from Booked_Trips
                                                where UserId = {UserId} and TripId = {tripId}", con);
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
            var cost = tripInfoParts[3];

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
                    NumberOfAvilibleSeats.Text = ResearvedSeatsForUserByTripId(TripId).ToString();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void BookBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
            con.Open();
            SqlCommand cmd = new SqlCommand($@"Declare @TripID INT = {TripId}			-- input
                                                Declare @UserID INT = {UserId}			-- input

                                                Delete From Booked_Trips
                                                where TripId = @TripID and UserId = @UserID

                                                Update Seats
                                                Set IsOccupatedByUserId = null
                                                Where IsOccupatedByUserId = @UserID and TrainId = (SELECT Top 1 TrainId FROM Trips WHERE TripId = @TripID)
											", con);
            
            cmd.ExecuteNonQuery();
            MessageBox.Show("Ticket Cancelled Succefully");
            FillTripsDropDown();
            con.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            PassengerDashBoard passengerDash = new PassengerDashBoard();
            passengerDash.UserEmail = userEmail;
            passengerDash.Show();
        }
    }
}
