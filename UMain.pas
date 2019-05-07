unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, XPMan, Buttons, ComCtrls, Registry;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    XPManifest1: TXPManifest;
    Panel1: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    ComboBox1: TComboBox;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    ComboBox2: TComboBox;
    ProgressBar1: TProgressBar;
    SpeedButton2: TSpeedButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    procedure Round;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  p:longint;
  x:longint;
  xy:longint;
  over:integer;
  verde:integer=$9AD6C0;
  galben:integer=$4696F7;
  rosu:integer=clRed;
  percent:real=0.1;
implementation

uses USettings;

{$R *.dfm}

function RIntWrite(Name: string;Value: integer): boolean;
var  Reg: TRegistry;
begin
 Reg := TRegistry.Create;
 Result:=True;
 with Reg do begin
  try
   RootKey := HKEY_CURRENT_USER;
   if OpenKey('\Software\FlorinM\CDTimer', TRUE) then
    WriteInteger(Name, Value)
   else Result:=False;
  Finally
   free;
  end; //try
 end;//with
end;

function RintRead(Name : string; DefaultValue: integer):integer;
var  Reg: TRegistry;
begin
 Reg := TRegistry.Create;
 result:=0;
 with Reg do begin
  try
   RootKey := HKEY_CURRENT_USER;
   if OpenKey('\Software\FlorinM\CDTimer', TRUE) then
    begin
      try
       Result := ReadInteger(Name);
      except
        RintWrite(Name, DefaultValue);
        Result:=DefaultValue;
      end;
    end;
  Finally
   free;
  end; //try
end;//with
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
 h, m, s:string;
 a:Longint;
begin
 if over<>1 then begin
    a:=GetTickCount;
    x:=x-(a-p);
    p:=a;
    if x<=xy then over:=2;
    if x<=0 then over:=1;
 end
 else begin
    a:=GetTickCount;
    x:=x+(a-p);
    p:=a;
 end;
 if (over<>1)and(x>=0)and(x<=progressbar1.Max) then progressbar1.Position:=progressbar1.Max-x;
 a:=x div 1000;
 h:=inttostr(a div 3600);
 a:=a mod 3600;
 m:=inttostr(a div 60);
 if length(m)=1 then m:='0'+m;
 s:=inttostr((x div 1000) mod 60);
 if length(s)=1 then s:='0'+s;
 label3.Caption:=h+':'+m+':'+s;
 if over=1 then begin
    form1.Color:=rosu;
    label3.Font.Color:=clWhite;
 end;
 if over=0 then begin
    form1.Color:=verde;
    label3.Font.Color:=clBlack;
 end;
 if over=2 then begin
    form1.Color:=galben;
    label3.Font.Color:=clBlack;
 end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 timer1.Enabled:=false;
 x:=0;
 over:=0;
 Label2.Visible:=true;
 ComboBox1.Visible:=true;
 SpeedButton1.Visible:=false;
 SpeedButton2.Visible:=true;
 label3.Caption:='N/A';
 form1.Color:=verde;
 label3.Font.Color:=clBlack;
 self.ClientHeight:=60;
 Round;
 progressbar1.Visible:=false;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
 application.Terminate;
end;

procedure TForm1.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 ReleaseCapture;
 SendMessage(Form1.Handle, WM_SYSCOMMAND, 61458, 0) ;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
 p:=GetTickCount;
 x:=(Combobox2.ItemIndex*60+ComboBox1.ItemIndex*5)*60*1000;
 xy:=trunc(x*percent);
 over:=0;
 timer1.Enabled:=true;
 Label2.Visible:=false;
 ComboBox1.Visible:=false;
 SpeedButton1.Visible:=true;
 SpeedButton2.Visible:=false;
 self.ClientHeight:=37;
 Round;
 progressbar1.Max:=x;
 progressbar1.Position:=0;
 progressbar1.Visible:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 percent:=RintRead('Percent', 10)/100;
 self.Color:=verde;
 Round;
end;

procedure TForm1.Round;
var
 regn: HRGN;
begin
 Form1.Borderstyle := bsNone;
 regn := CreateRoundRectRgn(0, 0,ClientWidth,ClientHeight,10,10);
 SetWindowRgn(Handle, regn, True);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
 Form2.TrackBar1.Position:=trunc(percent*100);
 if Form2.ShowModal=mrOk then begin
    RIntWrite('Percent', Form2.TrackBar1.Position);
    percent:=Form2.TrackBar1.Position/100;
 end;
end;

end.
