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
	public partial class UpdatedPassanger : Form
	{
        public UpdatedPassanger()
        {
            
        }
        public UpdatedPassanger(int userId)
		{
			InitializeComponent();
			UserId = userId;
			FillUserInfo();
		}

        public int UserId { get; set; }
        public void FillUserInfo()
		{
			SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");

			SqlCommand command = new SqlCommand($@"SELECT Users.* FROM Users where UserId = {UserId}" , con);
			SqlDataReader reader;
			try
			{
				con.Open();
				reader = command.ExecuteReader();
				while (reader.Read())
				{
					UserId = reader.GetInt32(0);
					FirstName.Text = reader.GetString(1);
					LastName.Text = reader.GetString(2);
					Email.Text = reader.GetString(3);
					Password.Text = reader.GetString(4);
					PhoneNumber.Text = reader.GetString(5);
				}
			}
			catch (Exception ex)
			{

				MessageBox.Show(ex.Message);
			}
		}
		private bool IsValidEmail(string email)
		{
			string pattern = @"^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$";
			return Regex.IsMatch(email, pattern);
		}
		private void UpdateBtn_Click(object sender, EventArgs e)
		{
			if (!IsValidEmail(Email.Text))
			{
				MessageBox.Show("Invalid email format");
				return;
			}
			SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
			con.Open();
			SqlCommand command = new SqlCommand($@"Update Users set FirstName = '{FirstName.Text}', LastName = '{LastName.Text}', PhoneNumber = '{PhoneNumber.Text}',Email = '{Email.Text}', Password = '{Password.Text}'
			where UserId = {UserId}", con);

			command.ExecuteNonQuery();
			con.Close();
			MessageBox.Show("Info Updated Successfully");

		}

		private void Button2_Click(object sender, EventArgs e)
		{
			SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
			SqlDataReader reader;
			con.Open();
			SqlCommand command = new SqlCommand($@"Select IsAdmin from Users  where UserId = {UserId}", con);
			reader = command.ExecuteReader();
			if(reader.Read())
			{
				var IsAdmin = reader.GetBoolean(0); 


				if(IsAdmin)
				{
					this.Hide();
					AdminHomePage adminHomePage = new AdminHomePage(Email.Text);
					adminHomePage.Show();
				}
				else
				{
					this.Hide();
                    PassengerDashBoard passengerDashBoard = new PassengerDashBoard
                    {
                        UserEmail = Email.Text
                    };
                    passengerDashBoard.Show();
				}
			}


			
		}
	}
}
