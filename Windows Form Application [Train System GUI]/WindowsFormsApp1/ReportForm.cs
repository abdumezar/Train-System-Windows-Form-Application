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
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace WindowsFormsApp1
{
	public partial class ReportForm : Form
	{
        public string UserEmail { get; set; }
        public ReportForm(string userEmail)
		{
			InitializeComponent();
            UserEmail = userEmail;
        }

		SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");

		private void GetTrainsList()
		{
			SqlCommand command = new SqlCommand(@"select TrainModel , count(*) from Trains group by TrainModel", con);
			SqlDataAdapter adapter = new SqlDataAdapter(command);
			DataTable dataTable = new DataTable();
			adapter.Fill(dataTable);
			NumberOfTrainModels.DataSource = dataTable;
		}

        private void TheMax5TripHaveOcuupatedSeatsList()
        {
            SqlCommand command = new SqlCommand(@"select Top 5 (tr.source + ' To ' + tr.destination) as [Trip] , sum(bt.NumberOfSeates) as [Number of Seats Booked]
                                                from Booked_Trips bt , Trips tr
                                                where bt.tripid = tr.tripid
                                                group by tr.source , tr.destination 
                                                order by [Number of Seats Booked] desc", con);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            TheMax5TripHaveOcuupatedSeats.DataSource = dataTable;
        }

        private void Top5TripsBought()
        {
            SqlCommand command = new SqlCommand(@"SELECT TOP 5 (tr.source + ' To ' + tr.destination) AS [Trip], SUM(bt.NumberOfSeates * tr.cost) AS [Total Cost]
                                                FROM Booked_trips bt, Trips tr
                                                WHERE bt.tripid = tr.tripid 
                                                GROUP BY tr.source , tr.destination
                                                ORDER BY [Total Cost] DESC;", con);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            Top5TripsBoughtGrid.DataSource = dataTable;
        }
        
        private void Top5BookingsGridF()
        {
            SqlCommand command = new SqlCommand(@"SELECT TOP 5 (U.firstname + ' ' + U.lastname) AS [User Name], (tr.source + ' To ' + tr.destination) AS [Trip], SUM(bt.NumberOfSeates * tr.cost) AS [Total Cost]
                                                FROM Booked_trips bt, Trips tr , Users U
                                                WHERE bt.tripid = tr.tripid AND U.UserId = bt.UserId
                                                GROUP BY U.firstname,U.lastname ,tr.source , tr.destination
                                                ORDER BY [Total Cost] DESC;", con);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            Top5BookingsGrid.DataSource = dataTable;
        }

        private void TheMax5UsersPayedMoneyGridF()
        {
            SqlCommand command = new SqlCommand(@"SELECT TOP 5 (U.firstname + ' ' + U.lastname) AS [User Name], SUM(bt.NumberOfSeates * tr.cost) AS [Total Cost]
                                                FROM Booked_trips bt, Trips tr, Users U
                                                WHERE bt.tripid = tr.tripid AND U.UserId = bt.UserId
                                                GROUP BY U.firstname, U.lastname
                                                ORDER BY [Total Cost] DESC;", con);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            TheMax5UsersPayedMoneyGrid.DataSource = dataTable;
        }

        private void Top5beenReservedGridF()
        {
            SqlCommand command = new SqlCommand(@"SELECT TOP 5 Train.TrainModel as [Type of train], SUM(bt.NumberOfSeates * tr.cost) AS [Total Cost]
                                                FROM Booked_trips bt, Trips tr , Trains Train
                                                WHERE bt.tripid = tr.tripid and tr.tripid = Train.TrainId 
                                                GROUP BY Train.TrainModel
                                                ORDER BY [Total Cost] DESC;
                                                ", con);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            Top5beenReservedGrid.DataSource = dataTable;
        }

        private void ReportsBtn_Click(object sender, EventArgs e)
        {
            
        }

        private void ReportForm_Load(object sender, EventArgs e)
		{
            GetTrainsList();
            TheMax5TripHaveOcuupatedSeatsList();
            Top5TripsBought();
            Top5BookingsGridF();
            TheMax5UsersPayedMoneyGridF();
            Top5beenReservedGridF();
        }

        private void NumberOfTrainModels_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        public int MyProperty { get; set; }
        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            AdminHomePage adminHome = new AdminHomePage(UserEmail);
            adminHome.Show();
        }
    }
}
