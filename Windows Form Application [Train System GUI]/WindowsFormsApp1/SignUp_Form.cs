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
	public partial class SignUp_Form : Form
	{
		public SignUp_Form()
		{
			InitializeComponent();
		}
		SqlConnection con = new SqlConnection(@"Data Source=.; Initial Catalog= Train_Booking_System; Integrated Security= True");
		private bool CheckMail ()
		{
			SqlCommand sqlCommand = new SqlCommand("select Email from Users where Email =@Email ", con);

			sqlCommand.Parameters.AddWithValue("@Email", Email.Text);
			SqlDataReader reader = sqlCommand.ExecuteReader();
			bool hasResult = reader.Read();
			reader.Close();
			return hasResult;
		}
		private bool IsValidEmail(string email)
		{
			string pattern = @"^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$";
			return Regex.IsMatch(email, pattern);
		}

		private void RegisterBtn_Click(object sender, EventArgs e)
		{
			if (!IsValidEmail(Email.Text))
			{
				MessageBox.Show("Invalid email format");
				return;
			}
			con.Open();

			if (!CheckMail())
			{
				SqlCommand sqlCommand = new SqlCommand("insert into Users values ('" + FirstName.Text + "','" + LastName.Text + "','" + Email.Text + "','" + Password.Text + "','" + PhoneNumber.Text + "','" + 0 + "')", con);
				sqlCommand.ExecuteNonQuery();
				MessageBox.Show("The email is created successfully ");
				this.Hide();
				Form1 form1 = new Form1();
				form1.Show();
			}
			else MessageBox.Show("The email is already exist ");
			con.Close();
			this.Close();
		}

		private void BackToForm1_Click(object sender, EventArgs e)
		{
			this.Hide();
			Form1 form1 = new Form1();
			form1.Show();		}
	}
}
