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
    public partial class TrainsOperations : Form
    {
        private readonly string UserEmail;
        public TrainsOperations(string userEmail)
        {
            InitializeComponent();
            UserEmail = userEmail;
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
        private void AddTrainBtn_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand command = new SqlCommand($@"insert into Trains values('{TrainModel.Text}' , {int.Parse(NoOfCarriages.Text)},{int.Parse(NoOfSeats.Text)} )

				 DECLARE @numberOfCarriages INT = {int.Parse(NoOfCarriages.Text)};
							Declare @numberOfSeats INT = {int.Parse(NoOfSeats.Text)};
				
							DECLARE @CarriageId INT = 1;
							DECLARE @SeatId INT = 1;
				
							DECLARE @trainID INT;
							select @trainID = Max(TrainId) from Trains
				
							WHILE @CarriageId <= @numberOfCarriages
				BEGIN
					insert into Carriages values(@CarriageId, @trainID)
					SET @SeatId = 1
					While @SeatId <= @numberOfSeats
					Begin
						insert into Seats
						values(@SeatId, @CarriageId, @trainID, null)
						SET @SeatId = @SeatId + 1;
							End;
							SET @CarriageId = @CarriageId + 1;
							END; ", con);
            command.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Train Added Succefully");
			GetTrainsList();
		}

        private void UpdateTrainBtn_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand command = new SqlCommand($@"
				Declare @TrainId INT =  {int.Parse(TrainId_U.Text)}
				DECLARE @numberOfCarriagesIn INT = {int.Parse(U_NoCarriages.Text)};
				Declare @newModel varchar(50) = '{U_TrianModel.Text}';
				
				DECLARE @CarriageId INT = (Select NumberOfCarriages From Trains where TrainId = @TrainId) + 1;	--	8
				
				Update Trains
				set TrainModel = @newModel, NumberOfCarriages = @numberOfCarriagesIn
				where TrainId = @TrainId
				
				Declare @numberOfSeats int = (Select NumberOfSeats From Trains where TrainId = @TrainId);
				
				if(@CarriageId <= @numberOfCarriagesIn)
				Begin
					WHILE @CarriageId <= @numberOfCarriagesIn
					BEGIN
						insert into Carriages values(@CarriageId, @TrainId)
						DECLARE @SeatId int = 1
						While @SeatId <= @numberOfSeats
						Begin
							insert into Seats
							values(@SeatId, @CarriageId, @TrainId, null)
							SET @SeatId = @SeatId + 1;
						End;
						SET @CarriageId = @CarriageId + 1;
					END;
				End
				else
				begin
					SET @CarriageId = @CarriageId - 1;
					WHILE @CarriageId > @numberOfCarriagesIn
					BEGIN
						Delete From Carriages
						Where CarriageId = @CarriageId and TrainId = @TrainId;
						SET @CarriageId = @CarriageId - 1 
					END;
				end", con);
            command.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Train Updated Succefully");
			GetTrainsList();
		}

        private void button1_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand command = new SqlCommand($@"Delete from Trains Where TrainId = {int.Parse(DeleteTrain.Text)}", con);
            command.ExecuteNonQuery();
            con.Close();
			MessageBox.Show("Train Deleted Succefully");
			GetTrainsList();
		}

        private void BackToHome_Click(object sender, EventArgs e)
        {
			this.Hide();
			AdminHomePage adminHome = new AdminHomePage(UserEmail);
			adminHome.Show();
        }

		private void GetTrainsList()
		{
			SqlCommand command = new SqlCommand(@"Select * From Trains ", con);
			SqlDataAdapter adapter = new SqlDataAdapter(command);
			DataTable dataTable = new DataTable();
			adapter.Fill(dataTable);
			AllTrainsInfo.DataSource = dataTable;
		}


		private void TrainsOperations_Load(object sender, EventArgs e)
		{
			GetTrainsList();
		}
	}
}
