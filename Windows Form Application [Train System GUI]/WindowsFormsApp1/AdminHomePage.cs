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
	public partial class AdminHomePage : Form
	{
        public int UserId { get; set; } = 0;
        public string UserEmail { get; set; }
		
        public AdminHomePage(string userEmail)
		{
            UserEmail = userEmail;
			GetCurrentUserId();
            InitializeComponent();
		}

		private void LogOut_Click(object sender, EventArgs e)
		{
			this.Close();
			Form1 f1 = new Form1();
			f1.Show();
		}
		
        private void GetCurrentUserId()
		{
			SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
			con.Open();
			SqlCommand command = new SqlCommand("Select UserId from Users where Email = @Email", con);
			command.Parameters.AddWithValue("@Email", UserEmail);

			SqlDataReader reader = command.ExecuteReader();
			if (reader.Read())
			{
				UserId = reader.GetInt32(0);
			}
			con.Close();


		}
		private void UpdatePersonalData_Click(object sender, EventArgs e)
		{
			this.Hide();
			UpdatedPassanger passanger = new UpdatedPassanger(UserId);
			passanger.Show();
		}

		private void Report_Click(object sender, EventArgs e)
		{
			this.Hide();
			ReportForm reportForm = new ReportForm(UserEmail);
			reportForm.Show();
		}

        private void TrainOpearation_Click(object sender, EventArgs e)
        {
			this.Hide();
			TrainsOperations trainOperations = new TrainsOperations(UserEmail);
			trainOperations.Show();
        }

        private void TripOperation_Click(object sender, EventArgs e)
        {
			this.Hide();
			TripsOperations tripsOperations = new TripsOperations(UserEmail);
			tripsOperations.Show();
        }
    }
}
