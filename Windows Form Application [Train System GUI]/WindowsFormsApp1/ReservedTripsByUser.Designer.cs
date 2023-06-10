namespace WindowsFormsApp1
{
    partial class ReservedTripsByUser
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ReservedTripsByUser));
			this.CancelBtn = new System.Windows.Forms.Button();
			this.groupBox1 = new System.Windows.Forms.GroupBox();
			this.label6 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.NumberOfAvilibleSeats = new System.Windows.Forms.TextBox();
			this.AllTripsDropDown = new System.Windows.Forms.ComboBox();
			this.CostBox = new System.Windows.Forms.TextBox();
			this.TrainModel = new System.Windows.Forms.TextBox();
			this.DateTimeBox = new System.Windows.Forms.TextBox();
			this.To = new System.Windows.Forms.TextBox();
			this.From = new System.Windows.Forms.TextBox();
			this.homeBtn = new System.Windows.Forms.Button();
			this.groupBox1.SuspendLayout();
			this.SuspendLayout();
			// 
			// CancelBtn
			// 
			this.CancelBtn.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.CancelBtn.AutoSize = true;
			this.CancelBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.CancelBtn.ForeColor = System.Drawing.Color.Maroon;
			this.CancelBtn.Location = new System.Drawing.Point(589, 519);
			this.CancelBtn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.CancelBtn.Name = "CancelBtn";
			this.CancelBtn.Size = new System.Drawing.Size(112, 46);
			this.CancelBtn.TabIndex = 13;
			this.CancelBtn.Text = "Cancel";
			this.CancelBtn.UseVisualStyleBackColor = true;
			this.CancelBtn.Click += new System.EventHandler(this.BookBtn_Click);
			// 
			// groupBox1
			// 
			this.groupBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.groupBox1.AutoSize = true;
			this.groupBox1.BackColor = System.Drawing.Color.Transparent;
			this.groupBox1.Controls.Add(this.label6);
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
			this.groupBox1.Location = new System.Drawing.Point(235, 128);
			this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.groupBox1.Name = "groupBox1";
			this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.groupBox1.Size = new System.Drawing.Size(807, 315);
			this.groupBox1.TabIndex = 14;
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
			this.label3.Location = new System.Drawing.Point(16, 202);
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
			// NumberOfAvilibleSeats
			// 
			this.NumberOfAvilibleSeats.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.NumberOfAvilibleSeats.Location = new System.Drawing.Point(141, 199);
			this.NumberOfAvilibleSeats.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.NumberOfAvilibleSeats.Name = "NumberOfAvilibleSeats";
			this.NumberOfAvilibleSeats.ReadOnly = true;
			this.NumberOfAvilibleSeats.Size = new System.Drawing.Size(203, 24);
			this.NumberOfAvilibleSeats.TabIndex = 11;
			this.NumberOfAvilibleSeats.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// AllTripsDropDown
			// 
			this.AllTripsDropDown.FlatStyle = System.Windows.Forms.FlatStyle.System;
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
			// CostBox
			// 
			this.CostBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.CostBox.Location = new System.Drawing.Point(141, 249);
			this.CostBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.CostBox.Name = "CostBox";
			this.CostBox.ReadOnly = true;
			this.CostBox.Size = new System.Drawing.Size(203, 24);
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
			this.TrainModel.Size = new System.Drawing.Size(212, 24);
			this.TrainModel.TabIndex = 9;
			this.TrainModel.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// DateTimeBox
			// 
			this.DateTimeBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.DateTimeBox.Location = new System.Drawing.Point(561, 198);
			this.DateTimeBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.DateTimeBox.Name = "DateTimeBox";
			this.DateTimeBox.ReadOnly = true;
			this.DateTimeBox.Size = new System.Drawing.Size(212, 24);
			this.DateTimeBox.TabIndex = 6;
			this.DateTimeBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// To
			// 
			this.To.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.To.Location = new System.Drawing.Point(561, 154);
			this.To.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.To.Name = "To";
			this.To.ReadOnly = true;
			this.To.Size = new System.Drawing.Size(212, 24);
			this.To.TabIndex = 5;
			this.To.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// From
			// 
			this.From.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.From.Location = new System.Drawing.Point(141, 156);
			this.From.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.From.Name = "From";
			this.From.ReadOnly = true;
			this.From.Size = new System.Drawing.Size(203, 24);
			this.From.TabIndex = 4;
			this.From.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// homeBtn
			// 
			this.homeBtn.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.homeBtn.AutoSize = true;
			this.homeBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.homeBtn.ForeColor = System.Drawing.Color.Maroon;
			this.homeBtn.Location = new System.Drawing.Point(1125, 27);
			this.homeBtn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.homeBtn.Name = "homeBtn";
			this.homeBtn.Size = new System.Drawing.Size(112, 46);
			this.homeBtn.TabIndex = 15;
			this.homeBtn.Text = "Home";
			this.homeBtn.UseVisualStyleBackColor = true;
			this.homeBtn.Click += new System.EventHandler(this.button1_Click);
			// 
			// ReservedTripsByUser
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
			this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.ClientSize = new System.Drawing.Size(1275, 729);
			this.Controls.Add(this.homeBtn);
			this.Controls.Add(this.CancelBtn);
			this.Controls.Add(this.groupBox1);
			this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
			this.Name = "ReservedTripsByUser";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "ReservedTripsByUser";
			this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
			this.groupBox1.ResumeLayout(false);
			this.groupBox1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button CancelBtn;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox NumberOfAvilibleSeats;
        private System.Windows.Forms.ComboBox AllTripsDropDown;
        private System.Windows.Forms.TextBox CostBox;
        private System.Windows.Forms.TextBox TrainModel;
        private System.Windows.Forms.TextBox DateTimeBox;
        private System.Windows.Forms.TextBox To;
        private System.Windows.Forms.TextBox From;
        private System.Windows.Forms.Button homeBtn;
    }
}