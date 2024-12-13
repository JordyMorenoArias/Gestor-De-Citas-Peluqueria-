﻿namespace Tarea_Final
{
    partial class frmNuevaCita
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmNuevaCita));
            btnCerrar = new Button();
            btnCrear = new Button();
            label9 = new Label();
            dtpFecha = new DateTimePicker();
            dtpHora = new DateTimePicker();
            label5 = new Label();
            cmbEmpleados = new ComboBox();
            label6 = new Label();
            label2 = new Label();
            cmbServicios = new ComboBox();
            lblPrecio = new Label();
            label3 = new Label();
            txtDescripcion = new TextBox();
            SuspendLayout();
            // 
            // btnCerrar
            // 
            btnCerrar.BackColor = Color.FromArgb(26, 32, 40);
            btnCerrar.FlatAppearance.BorderSize = 0;
            btnCerrar.FlatAppearance.MouseOverBackColor = Color.FromArgb(30, 38, 70);
            btnCerrar.FlatStyle = FlatStyle.Flat;
            btnCerrar.Font = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            btnCerrar.ForeColor = Color.White;
            btnCerrar.ImageAlign = ContentAlignment.MiddleLeft;
            btnCerrar.Location = new Point(348, 397);
            btnCerrar.Margin = new Padding(3, 2, 3, 2);
            btnCerrar.Name = "btnCerrar";
            btnCerrar.Size = new Size(88, 27);
            btnCerrar.TabIndex = 78;
            btnCerrar.Text = "Cerrar";
            btnCerrar.UseVisualStyleBackColor = false;
            btnCerrar.Click += btnCerrar_Click;
            // 
            // btnCrear
            // 
            btnCrear.BackColor = Color.FromArgb(26, 32, 40);
            btnCrear.FlatAppearance.BorderSize = 0;
            btnCrear.FlatAppearance.MouseOverBackColor = Color.FromArgb(30, 38, 70);
            btnCrear.FlatStyle = FlatStyle.Flat;
            btnCrear.Font = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            btnCrear.ForeColor = Color.White;
            btnCrear.ImageAlign = ContentAlignment.MiddleLeft;
            btnCrear.Location = new Point(254, 397);
            btnCrear.Margin = new Padding(3, 2, 3, 2);
            btnCrear.Name = "btnCrear";
            btnCrear.Size = new Size(88, 27);
            btnCrear.TabIndex = 77;
            btnCrear.Text = "Crear";
            btnCrear.UseVisualStyleBackColor = false;
            btnCrear.Click += btnCrear_Click;
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Font = new Font("Century Gothic", 19.8F, FontStyle.Regular, GraphicsUnit.Point);
            label9.ForeColor = Color.Silver;
            label9.Location = new Point(52, 35);
            label9.Name = "label9";
            label9.Size = new Size(162, 33);
            label9.TabIndex = 76;
            label9.Text = "Crear Citas";
            // 
            // dtpFecha
            // 
            dtpFecha.CalendarFont = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            dtpFecha.Font = new Font("Century Gothic", 11.25F, FontStyle.Regular, GraphicsUnit.Point);
            dtpFecha.Location = new Point(62, 275);
            dtpFecha.Margin = new Padding(3, 2, 3, 2);
            dtpFecha.Name = "dtpFecha";
            dtpFecha.Size = new Size(254, 26);
            dtpFecha.TabIndex = 82;
            // 
            // dtpHora
            // 
            dtpHora.CalendarFont = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            dtpHora.CustomFormat = "HH:mm";
            dtpHora.Font = new Font("Century Gothic", 11.25F, FontStyle.Regular, GraphicsUnit.Point);
            dtpHora.Format = DateTimePickerFormat.Time;
            dtpHora.Location = new Point(322, 275);
            dtpHora.Margin = new Padding(3, 2, 3, 2);
            dtpHora.Name = "dtpHora";
            dtpHora.ShowUpDown = true;
            dtpHora.Size = new Size(116, 26);
            dtpHora.TabIndex = 83;
            dtpHora.Value = new DateTime(2024, 8, 13, 8, 0, 0, 0);
            dtpHora.ValueChanged += dtpHora_ValueChanged;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            label5.ForeColor = Color.Silver;
            label5.Location = new Point(62, 254);
            label5.Name = "label5";
            label5.Size = new Size(175, 19);
            label5.TabIndex = 84;
            label5.Text = "Fecha y Hora de la Cita";
            // 
            // cmbEmpleados
            // 
            cmbEmpleados.Font = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            cmbEmpleados.FormattingEnabled = true;
            cmbEmpleados.Location = new Point(62, 343);
            cmbEmpleados.Margin = new Padding(3, 2, 3, 2);
            cmbEmpleados.Name = "cmbEmpleados";
            cmbEmpleados.Size = new Size(376, 27);
            cmbEmpleados.TabIndex = 85;
            cmbEmpleados.SelectedIndexChanged += cmbEmpleados_SelectedIndexChanged;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            label6.ForeColor = Color.Silver;
            label6.Location = new Point(62, 322);
            label6.Name = "label6";
            label6.Size = new Size(148, 19);
            label6.TabIndex = 86;
            label6.Text = "Barberos disponibles";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            label2.ForeColor = Color.Silver;
            label2.Location = new Point(64, 89);
            label2.Name = "label2";
            label2.Size = new Size(61, 19);
            label2.TabIndex = 88;
            label2.Text = "Servicio";
            // 
            // cmbServicios
            // 
            cmbServicios.Font = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            cmbServicios.FormattingEnabled = true;
            cmbServicios.Location = new Point(64, 110);
            cmbServicios.Margin = new Padding(3, 2, 3, 2);
            cmbServicios.Name = "cmbServicios";
            cmbServicios.Size = new Size(307, 27);
            cmbServicios.TabIndex = 87;
            cmbServicios.SelectedIndexChanged += cmbServicios_SelectedIndexChanged;
            // 
            // lblPrecio
            // 
            lblPrecio.AutoSize = true;
            lblPrecio.Font = new Font("Century Gothic", 15.75F, FontStyle.Regular, GraphicsUnit.Point);
            lblPrecio.ForeColor = Color.Silver;
            lblPrecio.Location = new Point(377, 113);
            lblPrecio.Name = "lblPrecio";
            lblPrecio.Size = new Size(61, 24);
            lblPrecio.TabIndex = 89;
            lblPrecio.Text = "price";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            label3.ForeColor = Color.Silver;
            label3.Location = new Point(62, 156);
            label3.Name = "label3";
            label3.Size = new Size(89, 19);
            label3.TabIndex = 90;
            label3.Text = "Descripcion";
            // 
            // txtDescripcion
            // 
            txtDescripcion.Font = new Font("Century Gothic", 10.2F, FontStyle.Regular, GraphicsUnit.Point);
            txtDescripcion.Location = new Point(62, 177);
            txtDescripcion.Margin = new Padding(3, 2, 3, 2);
            txtDescripcion.Multiline = true;
            txtDescripcion.Name = "txtDescripcion";
            txtDescripcion.ReadOnly = true;
            txtDescripcion.Size = new Size(374, 51);
            txtDescripcion.TabIndex = 91;
            // 
            // frmNuevaCita
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(46, 59, 100);
            ClientSize = new Size(654, 498);
            Controls.Add(txtDescripcion);
            Controls.Add(label3);
            Controls.Add(lblPrecio);
            Controls.Add(label2);
            Controls.Add(cmbServicios);
            Controls.Add(label6);
            Controls.Add(cmbEmpleados);
            Controls.Add(label5);
            Controls.Add(dtpHora);
            Controls.Add(dtpFecha);
            Controls.Add(btnCerrar);
            Controls.Add(btnCrear);
            Controls.Add(label9);
            FormBorderStyle = FormBorderStyle.None;
            Icon = (Icon)resources.GetObject("$this.Icon");
            Margin = new Padding(3, 2, 3, 2);
            Name = "frmNuevaCita";
            Text = "NuevaCita";
            Load += NuevaCita_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private Button btnCerrar;
        private Button btnCrear;
        private Label label9;
        private DateTimePicker dtpFecha;
        private DateTimePicker dtpHora;
        private Label label5;
        private ComboBox cmbEmpleados;
        private Label label6;
        private Label label2;
        private ComboBox cmbServicios;
        private Label lblPrecio;
        private Label label3;
        private TextBox textBox1;
        private TextBox txtDescripcion;
    }
}