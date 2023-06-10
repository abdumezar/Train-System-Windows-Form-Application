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
    public partial class TripsOperations : Form
    {
        public string UserEmail { get; set; }
        public TripsOperations(string userEmail)
        {
            InitializeComponent();
            UserEmail = userEmail;
        }

        private SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
        
        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void TripDate_ValueChanged(object sender, EventArgs e)
        {

        }


        private void UPDATETRIP_Click(object sender, EventArgs e)
        {
            var tripDate = TripDATE_U.Value.Date;
            var tripTime = TripTIME_U.Value.TimeOfDay;
            var tripDateTime = new DateTime(tripDate.Year, tripDate.Month, tripDate.Day, tripTime.Hours, tripTime.Minutes, tripTime.Seconds);
            con.Open();

            SqlCommand command = new SqlCommand($@"Update TRIPS set TrainId = {int.Parse(TripTainID_U.Text)}, TripDateTime = '{tripDateTime.ToString()}', Cost = {decimal.Parse(TipCOST_U.Text)}, Source = '{TripSource_U.Text}', Destination = '{TripDEST_U.Text}'
																						where TripId = {int.Parse(TripID_U.Text)}", con);

            command.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Trip Updated Succefully");
			GetTripsList();
		}

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void homeBtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            AdminHomePage adminHome = new AdminHomePage(UserEmail);
            adminHome.Show();
        }

        private void AddTripBtn_Click_1(object sender, EventArgs e)
        {
            var tripDate = TripDate.Value.Date;
            var tripTime = TripTime.Value.TimeOfDay;
            var tripDateTime = new DateTime(tripDate.Year, tripDate.Month, tripDate.Day, tripTime.Hours, tripTime.Minutes, tripTime.Seconds);
            
            if(tripDateTime < DateTime.Now)
            {
                MessageBox.Show("Trip Date Must Be In The Future");
                return;
            }

            con.Open();
            SqlCommand command = new SqlCommand($"insert into Trips values({int.Parse(TripTrainId.Text)}, '{tripDateTime}', {decimal.Parse(Cost.Text)}, '{Source.Text}', '{Destination.Text}')", con);
            command.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Trip Added Succefully");
			GetTripsList();
		}

        private void button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand command = new SqlCommand($@"Delete from Trips Where TripId = {int.Parse(DeleteTripIdN.Text)}", con);
            command.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Trip Deleted Succefully");
            DeleteTripIdN.Text = string.Empty;
            GetTripsList();
		}
		private void GetTripsList()
		{
			SqlCommand command = new SqlCommand(@"Select * From Trips ", con);
			SqlDataAdapter adapter = new SqlDataAdapter(command);
			DataTable dataTable = new DataTable();
			adapter.Fill(dataTable);
			AllTripsInfo.DataSource = dataTable;
		}
		private void TripsOperations_Load(object sender, EventArgs e)
		{
            GetTripsList();
        }

		private void BackToHome_Click(object sender, EventArgs e)
		{
			this.Hide();
			AdminHomePage adminHome = new AdminHomePage(UserEmail);
			adminHome.Show();
		}
	}
}
