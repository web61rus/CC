unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure textBox1_KeyPress(sender: Object; e: KeyPressEventArgs);
    procedure radioButton1_CheckedChanged(sender: Object; e: EventArgs);
    procedure radioButton2_CheckedChanged(sender: Object; e: EventArgs);
    procedure radioButton3_CheckedChanged(sender: Object; e: EventArgs);
    procedure radioButton4_CheckedChanged(sender: Object; e: EventArgs);
    procedure radioButton8_CheckedChanged(sender: Object; e: EventArgs);
    procedure radioButton7_CheckedChanged(sender: Object; e: EventArgs);
    procedure radioButton6_CheckedChanged(sender: Object; e: EventArgs);
    procedure radioButton5_CheckedChanged(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    textBox1: TextBox;
    button1: Button;
    groupBox1: GroupBox;
    radioButton4: RadioButton;
    radioButton3: RadioButton;
    radioButton2: RadioButton;
    radioButton1: RadioButton;
    groupBox2: GroupBox;
    radioButton5: RadioButton;
    radioButton6: RadioButton;
    radioButton7: RadioButton;
    radioButton8: RadioButton;
    label1: &Label;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public 
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

//10->2
function dec_bin(s: integer): string;
begin
  var c: string;
  while (s >= 1) do
  begin
    c += s mod 2;
    s := s div 2;
  end;
  result := ReverseString(c);
end;

//10->8
function dec_oct(s: integer): string;
begin
  var c: string;
  while (s >= 1) do
  begin
    c += s mod 8;
    s := s div 8;
  end;
  result := ReverseString(c);
end;

//10->16
function dec_hex(s: integer): string;
begin
  var b: string;
  while (s >= 1) do
  begin
    case (s mod 16) of 
      10: b += 'A';
      11: b += 'B';
      12: b += 'C';
      13: b += 'D';
      14: b += 'E';
      15: b += 'F';
    else b += s mod 16;
    end;
    s := s div 16;
  end;
  result := ReverseString(b);
end;

//2->10
function bin_dec(s: string): string;
begin
  var sum: real := 0;
  var b := s.length - 1;
  for var i := 1 to s.length do
  begin
    sum += s[i].tostring.tointeger * (power(2, b));
    dec(b);
  end;
  result := sum.tostring;
end;

//16->10
function hex_dec(s: string): string;
begin
  var b := s.length - 1;
  var sum: real := 0;
  for var i := 1 to s.length do
  begin
    case s[i] of 
      'A': sum += 10 * (power(16, b));
      'B': sum += 11 * (power(16, b));
      'C': sum += 12 * (power(16, b));
      'D': sum += 13 * (power(16, b));
      'E': sum += 14 * (power(16, b));
      'F': sum += 15 * (power(16, b));
    else sum += s[i].tostring.toreal * (power(16, b));
      dec(b);
    end;
  end;
  result := sum.tostring;
end;

//8->10
function oct_dec(s:string):string;
begin
  var sum: real := 0;
  var b := s.length - 1;
  for var i := 1 to s.length do
  begin
    sum += s[i].tostring.tointeger * (power(8, b));
    dec(b);
  end;
  result := sum.tostring;
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  
  //10->2
  if ((radioButton2.Checked = true) and (radioButton5.Checked = true)) then 
    label1.Text := 'Получившееся число: ' + dec_bin(textbox1.Text.ToInteger);
  
  //10->8
  if ((radioButton2.Checked = true) and (radioButton6.Checked = true)) then
    label1.Text := 'Получившееся число: ' + dec_oct(textbox1.Text.ToInteger);
  
  //10->16
  if ((radioButton2.Checked = true) and (radioButton8.Checked = true)) then
    label1.Text := 'Получившееся число: ' + dec_hex(textbox1.Text.ToInteger);
  
  //8->16
  if ((radioButton3.Checked = true) and (radioButton8.Checked = true)) then
    label1.Text := 'Получившееся число: ' + dec_hex(oct_dec(textbox1.Text).tointeger);
  
  //8->10
  if ((radioButton3.Checked = true) and (radioButton7.Checked = true)) then
    label1.Text := 'Получившееся число: ' + oct_dec(textbox1.Text);
  
  //8->2
  if ((radioButton3.Checked = true) and (radioButton5.Checked = true)) then
    label1.Text := 'Получившееся число: ' + dec_bin(oct_dec(textbox1.Text).tointeger);
    
  //2->10
  if ((radioButton4.Checked = true) and (radioButton7.Checked = true)) then
    label1.Text := 'Получившееся число: ' + bin_dec(textbox1.Text);
  
  //2->8
  if ((radioButton4.Checked = true) and (radioButton6.Checked = true)) then
    label1.Text := 'Получившееся число: ' + dec_oct(bin_dec(textbox1.Text).tointeger);
  
  //2->16
  if ((radioButton4.Checked = true) and (radioButton8.Checked = true)) then
    label1.Text := 'Получившееся число: ' + dec_hex(bin_dec(textbox1.Text).tointeger);  
  
  //16->10
  if ((radioButton1.Checked = true) and (radioButton7.Checked = true)) then
    label1.Text := 'Получившееся число: ' + hex_dec(textbox1.Text);
  
  //16->2
  if ((radioButton1.Checked = true) and (radioButton5.Checked = true)) then
    label1.Text := 'Получившееся число: ' + dec_bin(hex_dec(textbox1.Text).tostring.tointeger);
  
  //16->8
  if ((radioButton1.Checked = true) and (radioButton6.Checked = true)) then
    label1.Text := 'Получившееся число: ' + dec_oct(hex_dec(textbox1.Text).tostring.tointeger);
  
  radiobutton5.checked:=false;
  radiobutton6.checked:=false;
  radiobutton7.checked:=false;
  radiobutton8.checked:=false;
  button1.enabled:=false;
end;

procedure Form1.textBox1_KeyPress(sender: Object; e: KeyPressEventArgs);
begin
  
  //16
  if radiobutton1.checked = true then 
  begin
    if (((e.keychar >= chr(65)) and (e.keychar <= chr(70))) or ((e.keychar >= chr(97)) 
    and (e.keychar <= chr(102))) or (Char.IsDigit(e.KeyChar) or (e.KeyChar = chr(8)))) then 
    else e.Handled := true;
  end;
  
  //10
  if radiobutton2.checked = true then 
  begin
    if ((Char.IsDigit(e.KeyChar) or (e.KeyChar = chr(8)))) then 
    else e.Handled := true;
  end;
  
  //8
  if radiobutton3.checked = true then 
  begin
    if ((((e.keychar >= chr(48)) and (e.keychar <= chr(55))) or (e.KeyChar = chr(8)))) then 
    else e.Handled := true;
  end;
  
  //2
  if radiobutton4.checked = true then 
  begin
    if ((((e.keychar >= chr(48)) and (e.keychar <= chr(49))) or (e.KeyChar = chr(8)))) then 
    else e.Handled := true;
  end;
end;

procedure Form1.radioButton1_CheckedChanged(sender: Object; e: EventArgs);
begin
  if radioButton1.checked=true then 
  begin
  button1.enabled:=false;
  textBox1.text:='';
  radioButton8.enabled:=false;
  radioButton7.enabled:=true;
  radioButton6.enabled:=true;
  radioButton5.enabled:=true;
  
  radiobutton5.checked:=false;
  radiobutton6.checked:=false;
  radiobutton7.checked:=false;
  radiobutton8.checked:=false;
  end;
end;

procedure Form1.radioButton2_CheckedChanged(sender: Object; e: EventArgs);
begin
  if radioButton2.checked=true then 
  begin
  button1.enabled:=false;
  textBox1.text:='';
  radioButton5.enabled:=true;
  radioButton6.enabled:=true;
  radioButton7.enabled:=false;
  radioButton8.enabled:=true;
  
  radiobutton5.checked:=false;
  radiobutton6.checked:=false;
  radiobutton7.checked:=false;
  radiobutton8.checked:=false;
  end;
end;

procedure Form1.radioButton3_CheckedChanged(sender: Object; e: EventArgs);
begin
  if radioButton3.checked=true then 
  begin
  button1.enabled:=false;
  textBox1.text:='';
  radioButton5.enabled:=true;
  radioButton6.enabled:=false;
  radioButton7.enabled:=true;
  radioButton8.enabled:=true;
  
  radiobutton5.checked:=false;
  radiobutton6.checked:=false;
  radiobutton7.checked:=false;
  radiobutton8.checked:=false;
  end;
end;

procedure Form1.radioButton4_CheckedChanged(sender: Object; e: EventArgs);
begin
  if radioButton4.checked=true then 
  begin
  button1.enabled:=false;
  textBox1.text:='';
  radioButton6.enabled:=true;
  radioButton7.enabled:=true;
  radioButton8.enabled:=true;
  radioButton5.enabled:=false;
  
  radiobutton5.checked:=false;
  radiobutton6.checked:=false;
  radiobutton7.checked:=false;
  radiobutton8.checked:=false;  
  end;
end;

procedure Form1.radioButton8_CheckedChanged(sender: Object; e: EventArgs);
begin
  if radioButton8.checked=true then button1.enabled:=true;
end;

procedure Form1.radioButton7_CheckedChanged(sender: Object; e: EventArgs);
begin
  if radioButton7.checked=true then button1.enabled:=true;
end;

procedure Form1.radioButton6_CheckedChanged(sender: Object; e: EventArgs);
begin
  if radioButton6.checked=true then button1.enabled:=true;
end;

procedure Form1.radioButton5_CheckedChanged(sender: Object; e: EventArgs);
begin
  if radioButton5.checked=true then button1.enabled:=true;
end;

end.
