
namespace WindowsFormsApp1
{
	partial class PassengerDashBoard
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.components = new System.ComponentModel.Container();
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(PassengerDashBoard));
			this.BookBtn = new System.Windows.Forms.Button();
			this.NoOfSeatslabel = new System.Windows.Forms.Label();
			this.AllTripsDropDown = new System.Windows.Forms.ComboBox();
			this.From = new System.Windows.Forms.TextBox();
			this.To = new System.Windows.Forms.TextBox();
			this.DateTimeBox = new System.Windows.Forms.TextBox();
			this.CostBox = new System.Windows.Forms.TextBox();
			this.TrainModel = new System.Windows.Forms.TextBox();
			this.NomberOfSeats = new System.Windows.Forms.NumericUpDown();
			this.NumberOfAvilibleSeats = new System.Windows.Forms.TextBox();
			this.groupBox1 = new System.Windows.Forms.GroupBox();
			this.label6 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.button1 = new System.Windows.Forms.Button();
			this.button2 = new System.Windows.Forms.Button();
			this.button3 = new System.Windows.Forms.Button();
			this.tripBindingSource = new System.Windows.Forms.BindingSource(this.components);
			((System.ComponentModel.ISupportInitialize)(this.NomberOfSeats)).BeginInit();
			this.groupBox1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.tripBindingSource)).BeginInit();
			this.SuspendLayout();
			// 
			// BookBtn
			// 
			this.BookBtn.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.BookBtn.AutoSize = true;
			this.BookBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.BookBtn.ForeColor = System.Drawing.Color.Maroon;
			this.BookBtn.Location = new System.Drawing.Point(353, 370);
			this.BookBtn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.BookBtn.Name = "BookBtn";
			this.BookBtn.Size = new System.Drawing.Size(101, 46);
			this.BookBtn.TabIndex = 0;
			this.BookBtn.Text = "Book";
			this.BookBtn.UseVisualStyleBackColor = true;
			this.BookBtn.Click += new System.EventHandler(this.BookBtn_Click);
			// 
			// NoOfSeatslabel
			// 
			this.NoOfSeatslabel.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.NoOfSeatslabel.AutoSize = true;
			this.NoOfSeatslabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.NoOfSeatslabel.Location = new System.Drawing.Point(185, 329);
			this.NoOfSeatslabel.Name = "NoOfSeatslabel";
			this.NoOfSeatslabel.Size = new System.Drawing.Size(220, 20);
			this.NoOfSeatslabel.TabIndex = 2;
			this.NoOfSeatslabel.Text = "Choose number of seats:";
			// 
			// AllTripsDropDown
			// 
			this.AllTripsDropDown.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.AllTripsDropDown.FormattingEnabled = true;
			this.AllTripsDropDown.Location = new System.Drawing.Point(15, 16);
			this.AllTripsDropDown.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.AllTripsDropDown.MaxDropDownItems = 100;
			this.AllTripsDropDown.Name = "AllTripsDropDown";
			this.AllTripsDropDown.Size = new System.Drawing.Size(776, 33);
			this.AllTripsDropDown.Sorted = true;
			this.AllTripsDropDown.TabIndex = 3;
			this.AllTripsDropDown.Text = "From ------------ To ----------- Date -------------- Cost  ----------- Train mode" +
    "l";
			this.AllTripsDropDown.SelectedIndexChanged += new System.EventHandler(this.AllTripsDropDown_SelectedIndexChanged);
			// 
			// From
			// 
			this.From.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.From.Location = new System.Drawing.Point(141, 156);
			this.From.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.From.Name = "From";
			this.From.ReadOnly = true;
			this.From.Size = new System.Drawing.Size(207, 24);
			this.From.TabIndex = 4;
			this.From.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// To
			// 
			this.To.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.To.Location = new System.Drawing.Point(561, 154);
			this.To.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.To.Name = "To";
			this.To.ReadOnly = true;
			this.To.Size = new System.Drawing.Size(201, 24);
			this.To.TabIndex = 5;
			this.To.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// DateTimeBox
			// 
			this.DateTimeBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.DateTimeBox.Location = new System.Drawing.Point(561, 198);
			this.DateTimeBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.DateTimeBox.Name = "DateTimeBox";
			this.DateTimeBox.ReadOnly = true;
			this.DateTimeBox.Size = new System.Drawing.Size(201, 24);
			this.DateTimeBox.TabIndex = 6;
			this.DateTimeBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// CostBox
			// 
			this.CostBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.CostBox.Location = new System.Drawing.Point(141, 249);
			this.CostBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.CostBox.Name = "CostBox";
			this.CostBox.ReadOnly = true;
			this.CostBox.Size = new System.Drawing.Size(207, 24);
			this.CostBox.TabIndex = 8;
			this.CostBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// TrainModel
			// 
			this.TrainModel.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.TrainModel.Location = new System.Drawing.Point(561, 246);
			this.TrainModel.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.TrainModel.Name = "TrainModel";
			this.TrainModel.ReadOnly = true;
			this.TrainModel.Size = new System.Drawing.Size(201, 24);
			this.TrainModel.TabIndex = 9;
			this.TrainModel.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// NomberOfSeats
			// 
			this.NomberOfSeats.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.NomberOfSeats.AutoSize = true;
			this.NomberOfSeats.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.NomberOfSeats.Location = new System.Drawing.Point(458, 325);
			this.NomberOfSeats.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.NomberOfSeats.Name = "NomberOfSeats";
			this.NomberOfSeats.Size = new System.Drawing.Size(120, 24);
			this.NomberOfSeats.TabIndex = 10;
			this.NomberOfSeats.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// NumberOfAvilibleSeats
			// 
			this.NumberOfAvilibleSeats.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.NumberOfAvilibleSeats.Location = new System.Drawing.Point(141, 199);
			this.NumberOfAvilibleSeats.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.NumberOfAvilibleSeats.Name = "NumberOfAvilibleSeats";
			this.NumberOfAvilibleSeats.ReadOnly = true;
			this.NumberOfAvilibleSeats.Size = new System.Drawing.Size(207, 24);
			this.NumberOfAvilibleSeats.TabIndex = 11;
			this.NumberOfAvilibleSeats.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// groupBox1
			// 
			this.groupBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.groupBox1.AutoSize = true;
			this.groupBox1.BackColor = System.Drawing.Color.Transparent;
			this.groupBox1.Controls.Add(this.NoOfSeatslabel);
			this.groupBox1.Controls.Add(this.NomberOfSeats);
			this.groupBox1.Controls.Add(this.label6);
			this.groupBox1.Controls.Add(this.BookBtn);
			this.groupBox1.Controls.Add(this.label5);
			this.groupBox1.Controls.Add(this.label4);
			this.groupBox1.Controls.Add(this.label3);
			this.groupBox1.Controls.Add(this.label2);
			this.groupBox1.Controls.Add(this.label1);
			this.groupBox1.Controls.Add(this.NumberOfAvilibleSeats);
			this.groupBox1.Controls.Add(this.AllTripsDropDown);
			this.groupBox1.Controls.Add(this.CostBox);
			this.groupBox1.Controls.Add(this.TrainModel);
			this.groupBox1.Controls.Add(this.DateTimeBox);
			this.groupBox1.Controls.Add(this.To);
			this.groupBox1.Controls.Add(this.From);
			this.groupBox1.Location = new System.Drawing.Point(257, 199);
			this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.groupBox1.Name = "groupBox1";
			this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.groupBox1.Size = new System.Drawing.Size(807, 441);
			this.groupBox1.TabIndex = 12;
			this.groupBox1.TabStop = false;
			// 
			// label6
			// 
			this.label6.AutoSize = true;
			this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label6.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label6.Location = new System.Drawing.Point(455, 250);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(99, 17);
			this.label6.TabIndex = 17;
			this.label6.Text = "Train model:";
			// 
			// label5
			// 
			this.label5.AutoSize = true;
			this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label5.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label5.Location = new System.Drawing.Point(67, 251);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(45, 17);
			this.label5.TabIndex = 16;
			this.label5.Text = "Cost:";
			// 
			// label4
			// 
			this.label4.AutoSize = true;
			this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label4.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label4.Location = new System.Drawing.Point(461, 201);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(95, 17);
			this.label4.TabIndex = 15;
			this.label4.Text = "Date of trip:";
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label3.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label3.Location = new System.Drawing.Point(20, 202);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(116, 17);
			this.label3.TabIndex = 14;
			this.label3.Text = "Avilabel Seats:";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label2.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label2.Location = new System.Drawing.Point(511, 160);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(32, 17);
			this.label2.TabIndex = 13;
			this.label2.Text = "To:";
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label1.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label1.Location = new System.Drawing.Point(67, 162);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(49, 17);
			this.label1.TabIndex = 12;
			this.label1.Text = "From:";
			// 
			// button1
			// 
			this.button1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.button1.AutoSize = true;
			this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.button1.ForeColor = System.Drawing.Color.Maroon;
			this.button1.Location = new System.Drawing.Point(1188, 12);
			this.button1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(101, 39);
			this.button1.TabIndex = 13;
			this.button1.Text = "Log Out";
			this.button1.UseVisualStyleBackColor = true;
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// button2
			// 
			this.button2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.button2.AutoSize = true;
			this.button2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.button2.ForeColor = System.Drawing.Color.Maroon;
			this.button2.Location = new System.Drawing.Point(921, 14);
			this.button2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.button2.Name = "button2";
			this.button2.Size = new System.Drawing.Size(233, 39);
			this.button2.TabIndex = 14;
			this.button2.Text = "Update personal data";
			this.button2.UseVisualStyleBackColor = true;
			this.button2.Click += new System.EventHandler(this.button2_Click);
			// 
			// button3
			// 
			this.button3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.button3.AutoSize = true;
			this.button3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.button3.ForeColor = System.Drawing.Color.Maroon;
			this.button3.Location = new System.Drawing.Point(664, 12);
			this.button3.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.button3.Name = "button3";
			this.button3.Size = new System.Drawing.Size(233, 39);
			this.button3.TabIndex = 15;
			this.button3.Text = "Show Reserved Trips";
			this.button3.UseVisualStyleBackColor = true;
			this.button3.Click += new System.EventHandler(this.button3_Click);
			// 
			// tripBindingSource
			// 
			this.tripBindingSource.DataSource = typeof(WindowsFormsApp1.Trip);
			// 
			// PassengerDashBoard
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
			this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.ClientSize = new System.Drawing.Size(1315, 827);
			this.Controls.Add(this.button3);
			this.Controls.Add(this.button2);
			this.Controls.Add(this.button1);
			this.Controls.Add(this.groupBox1);
			this.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.Name = "PassengerDashBoard";
			this.Text = "PassengerDashBoard";
			this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
			((System.ComponentModel.ISupportInitialize)(this.NomberOfSeats)).EndInit();
			this.groupBox1.ResumeLayout(false);
			this.groupBox1.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.tripBindingSource)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.Button BookBtn;
		private System.Windows.Forms.Label NoOfSeatslabel;
		private System.Windows.Forms.ComboBox AllTripsDropDown;
		private System.Windows.Forms.TextBox From;
		private System.Windows.Forms.TextBox To;
		private System.Windows.Forms.TextBox DateTimeBox;
		private System.Windows.Forms.TextBox CostBox;
		private System.Windows.Forms.TextBox TrainModel;
		private System.Windows.Forms.BindingSource tripBindingSource;
		private System.Windows.Forms.NumericUpDown NomberOfSeats;
		private System.Windows.Forms.TextBox NumberOfAvilibleSeats;
		private System.Windows.Forms.GroupBox groupBox1;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
    }
}