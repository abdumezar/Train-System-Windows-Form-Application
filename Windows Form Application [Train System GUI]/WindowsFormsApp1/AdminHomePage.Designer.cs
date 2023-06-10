namespace WindowsFormsApp1
{
	partial class AdminHomePage
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AdminHomePage));
            this.Report = new System.Windows.Forms.Button();
            this.UpdatePersonalData = new System.Windows.Forms.Button();
            this.TripOperation = new System.Windows.Forms.Button();
            this.TrainOpearation = new System.Windows.Forms.Button();
            this.LogOut = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Report
            // 
            this.Report.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.Report.AutoSize = true;
            this.Report.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Report.ForeColor = System.Drawing.Color.Maroon;
            this.Report.Location = new System.Drawing.Point(352, 289);
            this.Report.Margin = new System.Windows.Forms.Padding(2);
            this.Report.Name = "Report";
            this.Report.Size = new System.Drawing.Size(175, 32);
            this.Report.TabIndex = 15;
            this.Report.Text = "Report";
            this.Report.UseVisualStyleBackColor = true;
            this.Report.Click += new System.EventHandler(this.Report_Click);
            // 
            // UpdatePersonalData
            // 
            this.UpdatePersonalData.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.UpdatePersonalData.AutoSize = true;
            this.UpdatePersonalData.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.UpdatePersonalData.ForeColor = System.Drawing.Color.Maroon;
            this.UpdatePersonalData.Location = new System.Drawing.Point(352, 340);
            this.UpdatePersonalData.Margin = new System.Windows.Forms.Padding(2);
            this.UpdatePersonalData.Name = "UpdatePersonalData";
            this.UpdatePersonalData.Size = new System.Drawing.Size(175, 32);
            this.UpdatePersonalData.TabIndex = 16;
            this.UpdatePersonalData.Text = "Update personal data";
            this.UpdatePersonalData.UseVisualStyleBackColor = true;
            this.UpdatePersonalData.Click += new System.EventHandler(this.UpdatePersonalData_Click);
            // 
            // TripOperation
            // 
            this.TripOperation.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.TripOperation.AutoSize = true;
            this.TripOperation.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TripOperation.ForeColor = System.Drawing.Color.Maroon;
            this.TripOperation.Location = new System.Drawing.Point(352, 243);
            this.TripOperation.Margin = new System.Windows.Forms.Padding(2);
            this.TripOperation.Name = "TripOperation";
            this.TripOperation.Size = new System.Drawing.Size(175, 32);
            this.TripOperation.TabIndex = 17;
            this.TripOperation.Text = "Trip Operations";
            this.TripOperation.UseVisualStyleBackColor = true;
            this.TripOperation.Click += new System.EventHandler(this.TripOperation_Click);
            // 
            // TrainOpearation
            // 
            this.TrainOpearation.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.TrainOpearation.AutoSize = true;
            this.TrainOpearation.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TrainOpearation.ForeColor = System.Drawing.Color.Maroon;
            this.TrainOpearation.Location = new System.Drawing.Point(352, 199);
            this.TrainOpearation.Margin = new System.Windows.Forms.Padding(2);
            this.TrainOpearation.Name = "TrainOpearation";
            this.TrainOpearation.Size = new System.Drawing.Size(175, 32);
            this.TrainOpearation.TabIndex = 18;
            this.TrainOpearation.Text = "Train Operations";
            this.TrainOpearation.UseVisualStyleBackColor = true;
            this.TrainOpearation.Click += new System.EventHandler(this.TrainOpearation_Click);
            // 
            // LogOut
            // 
            this.LogOut.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.LogOut.AutoSize = true;
            this.LogOut.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LogOut.ForeColor = System.Drawing.Color.Maroon;
            this.LogOut.Location = new System.Drawing.Point(352, 388);
            this.LogOut.Margin = new System.Windows.Forms.Padding(2);
            this.LogOut.Name = "LogOut";
            this.LogOut.Size = new System.Drawing.Size(175, 32);
            this.LogOut.TabIndex = 19;
            this.LogOut.Text = "Log Out";
            this.LogOut.UseVisualStyleBackColor = true;
            this.LogOut.Click += new System.EventHandler(this.LogOut_Click);
            // 
            // AdminHomePage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(900, 633);
            this.Controls.Add(this.LogOut);
            this.Controls.Add(this.TrainOpearation);
            this.Controls.Add(this.TripOperation);
            this.Controls.Add(this.UpdatePersonalData);
            this.Controls.Add(this.Report);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "AdminHomePage";
            this.Text = "AdminHomePage";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.ResumeLayout(false);
            this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.Button Report;
		private System.Windows.Forms.Button UpdatePersonalData;
		private System.Windows.Forms.Button TripOperation;
		private System.Windows.Forms.Button TrainOpearation;
		private System.Windows.Forms.Button LogOut;
	}
}