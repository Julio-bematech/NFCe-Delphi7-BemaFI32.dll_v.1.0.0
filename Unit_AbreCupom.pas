unit Unit_AbreCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm_AbreCupom = class(TForm)
    Edit1: TEdit;
    AbreCupom: TButton;
    Label1: TLabel;
    Apagar: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure AbreCupomClick(Sender: TObject);
    procedure ApagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_AbreCupom: TForm_AbreCupom;
  sCPF, sNome, sEndereco : string;
  flagAbre : integer;

implementation
{$R *.dfm}

procedure TForm_AbreCupom.AbreCupomClick(Sender: TObject);
begin
sCPF := Edit1.Text;
sNome := Edit2.Text;
sEndereco := Edit3.Text;
flagAbre := 1;
Close;
end;

procedure TForm_AbreCupom.ApagarClick(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
end;

end.
