procedure InitializeComponent;
    begin
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.button1 := new System.Windows.Forms.Button();
        self.groupBox1 := new System.Windows.Forms.GroupBox();
        self.radioButton4 := new System.Windows.Forms.RadioButton();
        self.radioButton3 := new System.Windows.Forms.RadioButton();
        self.radioButton2 := new System.Windows.Forms.RadioButton();
        self.radioButton1 := new System.Windows.Forms.RadioButton();
        self.groupBox2 := new System.Windows.Forms.GroupBox();
        self.radioButton5 := new System.Windows.Forms.RadioButton();
        self.radioButton6 := new System.Windows.Forms.RadioButton();
        self.radioButton7 := new System.Windows.Forms.RadioButton();
        self.radioButton8 := new System.Windows.Forms.RadioButton();
        self.label1 := new System.Windows.Forms.Label();
        self.groupBox1.SuspendLayout();
        self.groupBox2.SuspendLayout();
        self.SuspendLayout();
        // 
        // textBox1
        // 
        self.textBox1.CharacterCasing := System.Windows.Forms.CharacterCasing.Upper;
        self.textBox1.Cursor := System.Windows.Forms.Cursors.Default;
        self.textBox1.Location := new System.Drawing.Point(36, 12);
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(195, 20);
        self.textBox1.TabIndex := 0;
        self.textBox1.KeyPress += textBox1_KeyPress;
        // 
        // button1
        // 
        self.button1.Enabled := false;
        self.button1.Location := new System.Drawing.Point(36, 38);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(195, 23);
        self.button1.TabIndex := 1;
        self.button1.Text := 'Перевести';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // groupBox1
        // 
        self.groupBox1.Controls.Add(self.radioButton4);
        self.groupBox1.Controls.Add(self.radioButton3);
        self.groupBox1.Controls.Add(self.radioButton2);
        self.groupBox1.Controls.Add(self.radioButton1);
        self.groupBox1.Location := new System.Drawing.Point(36, 67);
        self.groupBox1.Name := 'groupBox1';
        self.groupBox1.Size := new System.Drawing.Size(90, 145);
        self.groupBox1.TabIndex := 2;
        self.groupBox1.TabStop := false;
        self.groupBox1.Text := 'Из';
        // 
        // radioButton4
        // 
        self.radioButton4.Location := new System.Drawing.Point(6, 109);
        self.radioButton4.Name := 'radioButton4';
        self.radioButton4.Size := new System.Drawing.Size(78, 24);
        self.radioButton4.TabIndex := 3;
        self.radioButton4.TabStop := true;
        self.radioButton4.Text := '2';
        self.radioButton4.UseVisualStyleBackColor := true;
        self.radioButton4.CheckedChanged += radioButton4_CheckedChanged;
        // 
        // radioButton3
        // 
        self.radioButton3.Location := new System.Drawing.Point(6, 79);
        self.radioButton3.Name := 'radioButton3';
        self.radioButton3.Size := new System.Drawing.Size(78, 24);
        self.radioButton3.TabIndex := 2;
        self.radioButton3.TabStop := true;
        self.radioButton3.Text := '8';
        self.radioButton3.UseVisualStyleBackColor := true;
        self.radioButton3.CheckedChanged += radioButton3_CheckedChanged;
        // 
        // radioButton2
        // 
        self.radioButton2.Location := new System.Drawing.Point(6, 49);
        self.radioButton2.Name := 'radioButton2';
        self.radioButton2.Size := new System.Drawing.Size(78, 24);
        self.radioButton2.TabIndex := 1;
        self.radioButton2.TabStop := true;
        self.radioButton2.Text := '10';
        self.radioButton2.UseVisualStyleBackColor := true;
        self.radioButton2.CheckedChanged += radioButton2_CheckedChanged;
        // 
        // radioButton1
        // 
        self.radioButton1.Location := new System.Drawing.Point(6, 19);
        self.radioButton1.Name := 'radioButton1';
        self.radioButton1.Size := new System.Drawing.Size(78, 24);
        self.radioButton1.TabIndex := 0;
        self.radioButton1.TabStop := true;
        self.radioButton1.Text := '16';
        self.radioButton1.UseVisualStyleBackColor := true;
        self.radioButton1.CheckedChanged += radioButton1_CheckedChanged;
        // 
        // groupBox2
        // 
        self.groupBox2.Controls.Add(self.radioButton5);
        self.groupBox2.Controls.Add(self.radioButton6);
        self.groupBox2.Controls.Add(self.radioButton7);
        self.groupBox2.Controls.Add(self.radioButton8);
        self.groupBox2.Location := new System.Drawing.Point(141, 67);
        self.groupBox2.Name := 'groupBox2';
        self.groupBox2.Size := new System.Drawing.Size(90, 145);
        self.groupBox2.TabIndex := 4;
        self.groupBox2.TabStop := false;
        self.groupBox2.Text := 'В';
        // 
        // radioButton5
        // 
        self.radioButton5.Location := new System.Drawing.Point(6, 109);
        self.radioButton5.Name := 'radioButton5';
        self.radioButton5.Size := new System.Drawing.Size(78, 24);
        self.radioButton5.TabIndex := 3;
        self.radioButton5.TabStop := true;
        self.radioButton5.Text := '2';
        self.radioButton5.UseVisualStyleBackColor := true;
        self.radioButton5.CheckedChanged += radioButton5_CheckedChanged;
        // 
        // radioButton6
        // 
        self.radioButton6.Location := new System.Drawing.Point(6, 79);
        self.radioButton6.Name := 'radioButton6';
        self.radioButton6.Size := new System.Drawing.Size(78, 24);
        self.radioButton6.TabIndex := 2;
        self.radioButton6.TabStop := true;
        self.radioButton6.Text := '8';
        self.radioButton6.UseVisualStyleBackColor := true;
        self.radioButton6.CheckedChanged += radioButton6_CheckedChanged;
        // 
        // radioButton7
        // 
        self.radioButton7.Location := new System.Drawing.Point(6, 49);
        self.radioButton7.Name := 'radioButton7';
        self.radioButton7.Size := new System.Drawing.Size(78, 24);
        self.radioButton7.TabIndex := 1;
        self.radioButton7.TabStop := true;
        self.radioButton7.Text := '10';
        self.radioButton7.UseVisualStyleBackColor := true;
        self.radioButton7.CheckedChanged += radioButton7_CheckedChanged;
        // 
        // radioButton8
        // 
        self.radioButton8.Location := new System.Drawing.Point(6, 19);
        self.radioButton8.Name := 'radioButton8';
        self.radioButton8.Size := new System.Drawing.Size(78, 24);
        self.radioButton8.TabIndex := 0;
        self.radioButton8.TabStop := true;
        self.radioButton8.Text := '16';
        self.radioButton8.UseVisualStyleBackColor := true;
        self.radioButton8.CheckedChanged += radioButton8_CheckedChanged;
        // 
        // label1
        // 
        self.label1.Location := new System.Drawing.Point(36, 215);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(195, 23);
        self.label1.TabIndex := 5;
        self.label1.Text := 'Получившееся число: ';
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(263, 240);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.groupBox2);
        self.Controls.Add(self.groupBox1);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.textBox1);
        self.MaximizeBox := false;
        self.MaximumSize := new System.Drawing.Size(279, 279);
        self.MinimumSize := new System.Drawing.Size(279, 279);
        self.Name := 'Form1';
        self.StartPosition := System.Windows.Forms.FormStartPosition.CenterScreen;
        self.Text := 'Перевод С/С';
        self.groupBox1.ResumeLayout(false);
        self.groupBox2.ResumeLayout(false);
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
