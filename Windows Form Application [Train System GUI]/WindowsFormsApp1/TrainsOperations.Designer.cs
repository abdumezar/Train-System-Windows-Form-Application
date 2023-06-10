namespace WindowsFormsApp1
{
    partial class TrainsOperations
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
			System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
			System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(TrainsOperations));
			this.groupBox1 = new System.Windows.Forms.GroupBox();
			this.label3 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.NoOfSeats = new System.Windows.Forms.TextBox();
			this.NoOfCarriages = new System.Windows.Forms.TextBox();
			this.TrainModel = new System.Windows.Forms.TextBox();
			this.AddTrainBtn = new System.Windows.Forms.Button();
			this.groupBox2 = new System.Windows.Forms.GroupBox();
			this.label11 = new System.Windows.Forms.Label();
			this.U_NoCarriages = new System.Windows.Forms.TextBox();
			this.label5 = new System.Windows.Forms.Label();
			this.U_TrainId = new System.Windows.Forms.Label();
			this.U_TrianModel = new System.Windows.Forms.TextBox();
			this.TrainId_U = new System.Windows.Forms.TextBox();
			this.UpdateTrainBtn = new System.Windows.Forms.Button();
			this.groupBox3 = new System.Windows.Forms.GroupBox();
			this.label6 = new System.Windows.Forms.Label();
			this.DeleteTrain = new System.Windows.Forms.TextBox();
			this.DeleteFrain = new System.Windows.Forms.Button();
			this.BackToHome = new System.Windows.Forms.Button();
			this.AllTrainsInfo = new System.Windows.Forms.DataGridView();
			this.groupBox1.SuspendLayout();
			this.groupBox2.SuspendLayout();
			this.groupBox3.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.AllTrainsInfo)).BeginInit();
			this.SuspendLayout();
			// 
			// groupBox1
			// 
			this.groupBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.groupBox1.AutoSize = true;
			this.groupBox1.BackColor = System.Drawing.Color.Transparent;
			this.groupBox1.Controls.Add(this.label3);
			this.groupBox1.Controls.Add(this.label2);
			this.groupBox1.Controls.Add(this.label1);
			this.groupBox1.Controls.Add(this.NoOfSeats);
			this.groupBox1.Controls.Add(this.NoOfCarriages);
			this.groupBox1.Controls.Add(this.TrainModel);
			this.groupBox1.Controls.Add(this.AddTrainBtn);
			this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.groupBox1.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.groupBox1.Location = new System.Drawing.Point(51, 95);
			this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.groupBox1.Name = "groupBox1";
			this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.groupBox1.Size = new System.Drawing.Size(392, 400);
			this.groupBox1.TabIndex = 19;
			this.groupBox1.TabStop = false;
			this.groupBox1.Text = "Insert Train";
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label3.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label3.Location = new System.Drawing.Point(40, 224);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(107, 20);
			this.label3.TabIndex = 17;
			this.label3.Text = "No.of Seats";
			this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label2.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label2.Location = new System.Drawing.Point(40, 132);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(142, 20);
			this.label2.TabIndex = 16;
			this.label2.Text = "No of Carriages";
			this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			this.label2.Click += new System.EventHandler(this.label2_Click);
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label1.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label1.Location = new System.Drawing.Point(40, 55);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(108, 20);
			this.label1.TabIndex = 15;
			this.label1.Text = "Train Model";
			this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// NoOfSeats
			// 
			this.NoOfSeats.Location = new System.Drawing.Point(44, 247);
			this.NoOfSeats.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.NoOfSeats.Name = "NoOfSeats";
			this.NoOfSeats.Size = new System.Drawing.Size(295, 26);
			this.NoOfSeats.TabIndex = 3;
			this.NoOfSeats.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// NoOfCarriages
			// 
			this.NoOfCarriages.Location = new System.Drawing.Point(44, 155);
			this.NoOfCarriages.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.NoOfCarriages.Name = "NoOfCarriages";
			this.NoOfCarriages.Size = new System.Drawing.Size(295, 26);
			this.NoOfCarriages.TabIndex = 2;
			this.NoOfCarriages.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// TrainModel
			// 
			this.TrainModel.Location = new System.Drawing.Point(44, 79);
			this.TrainModel.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.TrainModel.Name = "TrainModel";
			this.TrainModel.Size = new System.Drawing.Size(295, 26);
			this.TrainModel.TabIndex = 1;
			this.TrainModel.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// AddTrainBtn
			// 
			this.AddTrainBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.AddTrainBtn.ForeColor = System.Drawing.Color.Maroon;
			this.AddTrainBtn.Location = new System.Drawing.Point(100, 309);
			this.AddTrainBtn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.AddTrainBtn.Name = "AddTrainBtn";
			this.AddTrainBtn.Size = new System.Drawing.Size(165, 48);
			this.AddTrainBtn.TabIndex = 4;
			this.AddTrainBtn.Text = "Add Train";
			this.AddTrainBtn.UseVisualStyleBackColor = true;
			this.AddTrainBtn.Click += new System.EventHandler(this.AddTrainBtn_Click);
			// 
			// groupBox2
			// 
			this.groupBox2.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.groupBox2.AutoSize = true;
			this.groupBox2.BackColor = System.Drawing.Color.Transparent;
			this.groupBox2.Controls.Add(this.label11);
			this.groupBox2.Controls.Add(this.U_NoCarriages);
			this.groupBox2.Controls.Add(this.label5);
			this.groupBox2.Controls.Add(this.U_TrainId);
			this.groupBox2.Controls.Add(this.U_TrianModel);
			this.groupBox2.Controls.Add(this.TrainId_U);
			this.groupBox2.Controls.Add(this.UpdateTrainBtn);
			this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.groupBox2.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.groupBox2.Location = new System.Drawing.Point(536, 95);
			this.groupBox2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.groupBox2.Name = "groupBox2";
			this.groupBox2.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.groupBox2.Size = new System.Drawing.Size(407, 400);
			this.groupBox2.TabIndex = 20;
			this.groupBox2.TabStop = false;
			this.groupBox2.Text = "Update Train";
			// 
			// label11
			// 
			this.label11.AutoSize = true;
			this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label11.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label11.Location = new System.Drawing.Point(65, 224);
			this.label11.Name = "label11";
			this.label11.Size = new System.Drawing.Size(184, 20);
			this.label11.TabIndex = 18;
			this.label11.Text = "Number of Carriages";
			this.label11.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// U_NoCarriages
			// 
			this.U_NoCarriages.Location = new System.Drawing.Point(69, 247);
			this.U_NoCarriages.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.U_NoCarriages.Name = "U_NoCarriages";
			this.U_NoCarriages.Size = new System.Drawing.Size(279, 26);
			this.U_NoCarriages.TabIndex = 17;
			// 
			// label5
			// 
			this.label5.AutoSize = true;
			this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label5.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label5.Location = new System.Drawing.Point(65, 132);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(150, 20);
			this.label5.TabIndex = 16;
			this.label5.Text = "New Train Model";
			this.label5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// U_TrainId
			// 
			this.U_TrainId.AutoSize = true;
			this.U_TrainId.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.U_TrainId.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.U_TrainId.Location = new System.Drawing.Point(65, 55);
			this.U_TrainId.Name = "U_TrainId";
			this.U_TrainId.Size = new System.Drawing.Size(77, 20);
			this.U_TrainId.TabIndex = 15;
			this.U_TrainId.Text = "Train ID";
			this.U_TrainId.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// U_TrianModel
			// 
			this.U_TrianModel.Location = new System.Drawing.Point(69, 155);
			this.U_TrianModel.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.U_TrianModel.Name = "U_TrianModel";
			this.U_TrianModel.Size = new System.Drawing.Size(279, 26);
			this.U_TrianModel.TabIndex = 2;
			// 
			// TrainId_U
			// 
			this.TrainId_U.Location = new System.Drawing.Point(69, 79);
			this.TrainId_U.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.TrainId_U.Name = "TrainId_U";
			this.TrainId_U.Size = new System.Drawing.Size(279, 26);
			this.TrainId_U.TabIndex = 1;
			// 
			// UpdateTrainBtn
			// 
			this.UpdateTrainBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.UpdateTrainBtn.ForeColor = System.Drawing.Color.Maroon;
			this.UpdateTrainBtn.Location = new System.Drawing.Point(123, 309);
			this.UpdateTrainBtn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.UpdateTrainBtn.Name = "UpdateTrainBtn";
			this.UpdateTrainBtn.Size = new System.Drawing.Size(165, 48);
			this.UpdateTrainBtn.TabIndex = 4;
			this.UpdateTrainBtn.Text = "Update Train";
			this.UpdateTrainBtn.UseVisualStyleBackColor = true;
			this.UpdateTrainBtn.Click += new System.EventHandler(this.UpdateTrainBtn_Click);
			// 
			// groupBox3
			// 
			this.groupBox3.Anchor = System.Windows.Forms.AnchorStyles.None;
			this.groupBox3.AutoSize = true;
			this.groupBox3.BackColor = System.Drawing.Color.Transparent;
			this.groupBox3.Controls.Add(this.label6);
			this.groupBox3.Controls.Add(this.DeleteTrain);
			this.groupBox3.Controls.Add(this.DeleteFrain);
			this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.groupBox3.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.groupBox3.Location = new System.Drawing.Point(1027, 95);
			this.groupBox3.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.groupBox3.Name = "groupBox3";
			this.groupBox3.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.groupBox3.Size = new System.Drawing.Size(409, 400);
			this.groupBox3.TabIndex = 21;
			this.groupBox3.TabStop = false;
			this.groupBox3.Text = "Delete Train";
			// 
			// label6
			// 
			this.label6.AutoSize = true;
			this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label6.ForeColor = System.Drawing.SystemColors.ButtonFace;
			this.label6.Location = new System.Drawing.Point(151, 117);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(77, 20);
			this.label6.TabIndex = 15;
			this.label6.Text = "Train ID";
			this.label6.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			// 
			// DeleteTrain
			// 
			this.DeleteTrain.Location = new System.Drawing.Point(61, 155);
			this.DeleteTrain.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.DeleteTrain.Name = "DeleteTrain";
			this.DeleteTrain.Size = new System.Drawing.Size(297, 26);
			this.DeleteTrain.TabIndex = 1;
			this.DeleteTrain.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// DeleteFrain
			// 
			this.DeleteFrain.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.DeleteFrain.ForeColor = System.Drawing.Color.Maroon;
			this.DeleteFrain.Location = new System.Drawing.Point(119, 247);
			this.DeleteFrain.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
			this.DeleteFrain.Name = "DeleteFrain";
			this.DeleteFrain.Size = new System.Drawing.Size(165, 48);
			this.DeleteFrain.TabIndex = 4;
			this.DeleteFrain.Text = "Delete Train";
			this.DeleteFrain.UseVisualStyleBackColor = true;
			this.DeleteFrain.Click += new System.EventHandler(this.button1_Click);
			// 
			// BackToHome
			// 
			this.BackToHome.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
			this.BackToHome.AutoSize = true;
			this.BackToHome.Font = new System.Drawing.Font("Microsoft Sans Serif", 13F, System.Drawing.FontStyle.Bold);
			this.BackToHome.ForeColor = System.Drawing.Color.Maroon;
			this.BackToHome.Location = new System.Drawing.Point(1320, 13);
			this.BackToHome.Margin = new System.Windows.Forms.Padding(4);
			this.BackToHome.Name = "BackToHome";
			this.BackToHome.Size = new System.Drawing.Size(173, 55);
			this.BackToHome.TabIndex = 22;
			this.BackToHome.Text = "Home";
			this.BackToHome.UseVisualStyleBackColor = true;
			this.BackToHome.Click += new System.EventHandler(this.BackToHome_Click);
			// 
			// AllTrainsInfo
			// 
			this.AllTrainsInfo.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
			this.AllTrainsInfo.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
			dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
			dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
			dataGridViewCellStyle1.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
			dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
			dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
			dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
			this.AllTrainsInfo.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
			this.AllTrainsInfo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.AllTrainsInfo.Dock = System.Windows.Forms.DockStyle.Bottom;
			this.AllTrainsInfo.GridColor = System.Drawing.Color.Black;
			this.AllTrainsInfo.Location = new System.Drawing.Point(0, 395);
			this.AllTrainsInfo.Name = "AllTrainsInfo";
			this.AllTrainsInfo.RowHeadersVisible = false;
			this.AllTrainsInfo.RowHeadersWidth = 51;
			dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
			dataGridViewCellStyle2.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.AllTrainsInfo.RowsDefaultCellStyle = dataGridViewCellStyle2;
			this.AllTrainsInfo.RowTemplate.Height = 24;
			this.AllTrainsInfo.Size = new System.Drawing.Size(1517, 318);
			this.AllTrainsInfo.TabIndex = 23;
			// 
			// TrainsOperations
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
			this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
			this.ClientSize = new System.Drawing.Size(1517, 713);
			this.Controls.Add(this.AllTrainsInfo);
			this.Controls.Add(this.BackToHome);
			this.Controls.Add(this.groupBox3);
			this.Controls.Add(this.groupBox2);
			this.Controls.Add(this.groupBox1);
			this.Margin = new System.Windows.Forms.Padding(4);
			this.Name = "TrainsOperations";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "TrainsOperations";
			this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
			this.Load += new System.EventHandler(this.TrainsOperations_Load);
			this.groupBox1.ResumeLayout(false);
			this.groupBox1.PerformLayout();
			this.groupBox2.ResumeLayout(false);
			this.groupBox2.PerformLayout();
			this.groupBox3.ResumeLayout(false);
			this.groupBox3.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.AllTrainsInfo)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox NoOfSeats;
        private System.Windows.Forms.TextBox NoOfCarriages;
        private System.Windows.Forms.TextBox TrainModel;
        private System.Windows.Forms.Button AddTrainBtn;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox U_NoCarriages;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label U_TrainId;
        private System.Windows.Forms.TextBox U_TrianModel;
        private System.Windows.Forms.TextBox TrainId_U;
        private System.Windows.Forms.Button UpdateTrainBtn;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox DeleteTrain;
        private System.Windows.Forms.Button DeleteFrain;
        private System.Windows.Forms.Button BackToHome;
		private System.Windows.Forms.DataGridView AllTrainsInfo;
	}
}