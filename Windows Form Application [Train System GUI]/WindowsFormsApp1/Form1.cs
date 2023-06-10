using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
	public partial class Form1 : Form
	{
		public Form1()
		{
			DeleteCompletedTrips();
            InitializeComponent();
		}

		private void SignUpBtn_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			this.Hide();
			SignUp_Form su = new SignUp_Form();
			su.Show();
		}

        private void DeleteCompletedTrips()
        {
            con.Open();
            SqlCommand command = new SqlCommand($@"Delete from Trips where TripDateTime < GETDATE()", con);
            command.ExecuteNonQuery();
            con.Close();
        }

        private bool IsValidEmail(string email)
		{
			string pattern = @"^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$";
			return Regex.IsMatch(email, pattern);
		}

		SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
		private bool CheckMailAndAuth()
		{
			SqlCommand sqlCommand = new SqlCommand("SELECT Email, IsAdmin FROM Users WHERE Email = @Email AND IsAdmin = @IsAdmin", con);
			sqlCommand.Parameters.AddWithValue("@Email", Email.Text);
			sqlCommand.Parameters.AddWithValue("@IsAdmin", 1);

			SqlDataReader reader = sqlCommand.ExecuteReader();
			bool hasResult = reader.Read();
			reader.Close();
			return hasResult;
		}
		private bool CheckMailAndPassword()
		{
			SqlCommand sqlCommand = new SqlCommand("SELECT Email, IsAdmin FROM Users WHERE Email = @Email AND Password = @Password", con);
			sqlCommand.Parameters.AddWithValue("@Email", Email.Text);
			sqlCommand.Parameters.AddWithValue("@Password", Password.Text);

			SqlDataReader reader = sqlCommand.ExecuteReader();
			bool hasResult = reader.Read();
			reader.Close();
			return hasResult;
		}
		private void LoginBtn_Click(object sender, EventArgs e)
		{
			if (!IsValidEmail(Email.Text))
			{
				MessageBox.Show("Invalid email format");
				return;
			}
			con.Open();
			if (CheckMailAndAuth())
			{
				if(CheckMailAndPassword())
				{
					AdminHomePage adminHome = new AdminHomePage(Email.Text);
					adminHome.Show();
					this.Hide();
					MessageBox.Show("Welcom To Admin Page");
				}
				else MessageBox.Show("Mail Or Password Is Worng");
				

			}
			else
			{

				if (CheckMailAndPassword())
				{
					PassengerDashBoard passengerDashBoard = new PassengerDashBoard();
					passengerDashBoard.UserEmail = Email.Text;
					passengerDashBoard.Show();
					this.Hide();

					MessageBox.Show("Welcom To Passanger DashBoard");
				}
				else MessageBox.Show("Mail Or Password Is Worng");
				
			}
			con.Close();


		}
	}
}
