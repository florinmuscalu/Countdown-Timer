program CDTimer;

uses
  Forms,
  UMain in 'UMain.pas' {Form1},
  USettings in 'USettings.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
