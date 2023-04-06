unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    txtDisplay: TEdit;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure txtDisplayChange(Sender: TObject);
  private
         primeironum,segundonum, Answer:String;
         operadores :Char;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.txtDisplayChange(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  txtDisplay.text := copy(txtDisplay.text,1,length(txtDisplay.text)-1);
  if txtDisplay.text='' then
   txtDisplay.text :='0';
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
     if txtDisplay.Text ='0' then
    txtDisplay.Text :='9'
   else
     txtDisplay.Text :=   txtDisplay.Text+'9';
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
     if txtDisplay.Text ='0' then
    txtDisplay.Text :='6'
   else
     txtDisplay.Text :=   txtDisplay.Text+'6';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
     if txtDisplay.Text ='0' then
    txtDisplay.Text :='3'
   else
     txtDisplay.Text :=   txtDisplay.Text+'3';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
    primeironum:= txtDisplay.text;
  operadores :='*';
  txtDisplay.text:='';
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  primeironum:= txtDisplay.text;
  operadores :='-';
  txtDisplay.text:='';
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  primeironum:= txtDisplay.text;
  operadores :='+';
  txtDisplay.text:='';
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  segundonum := txtDisplay.text;

  case (operadores)of
  '+':
    Answer := FloatToStr(StrToFloat(primeironum)+StrToFloat(segundoNum));
  '-':
    Answer := FloatToStr(StrToFloat(primeironum)-StrToFloat(segundoNum));
  '*':
    Answer := FloatToStr(StrToFloat(primeironum)*StrToFloat(segundoNum));
  '/':
    Answer := FloatToStr(StrToFloat(primeironum)/StrToFloat(segundoNum));
  end;
  txtDisplay.Text := Answer;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  if(POS('.',txtDisplay.text)<>0)then
   exit
   else
     txtDisplay.text:=txtDisplay.text+  Button17.Caption;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
     if txtDisplay.Text ='0' then
    txtDisplay.Text :='0'
   else
     txtDisplay.Text :=   txtDisplay.Text+'0';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   if txtDisplay.Text ='0' then
    txtDisplay.Text :='7'
   else
     txtDisplay.Text :=   txtDisplay.Text+'7';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     if txtDisplay.Text ='0' then
    txtDisplay.Text :='4'
   else
     txtDisplay.Text :=   txtDisplay.Text+'4';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     if txtDisplay.Text ='0' then
    txtDisplay.Text :='1'
   else
     txtDisplay.Text :=   txtDisplay.Text+'1';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  txtDisplay.text := '0' ;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
       if txtDisplay.Text ='0' then
    txtDisplay.Text :='8'
   else
     txtDisplay.Text :=   txtDisplay.Text+'8';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
     if txtDisplay.Text ='0' then
    txtDisplay.Text :='5'
   else
     txtDisplay.Text :=   txtDisplay.Text+'5';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
     if txtDisplay.Text ='0' then
    txtDisplay.Text :='2'
   else
     txtDisplay.Text :=   txtDisplay.Text+'2';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
    primeironum:= txtDisplay.text;
  operadores :='/';
  txtDisplay.text:='';
end;

end.

