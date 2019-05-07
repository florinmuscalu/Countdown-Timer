unit USettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses UMain;
{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
 Label1.Caption:='Warning at '+inttostr(TrackBar1.Position)+' % time remaining.';
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

end.
