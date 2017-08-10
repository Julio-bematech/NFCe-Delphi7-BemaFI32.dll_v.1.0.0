unit Unit_CancelaCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormCancelaCupomFechado = class(TForm)
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Limpar: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure LimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCancelaCupomFechado: TFormCancelaCupomFechado;
  iRetorno : integer;
  CPF    : string;
  Name   : string;
  Adress : string;

implementation

{$R *.dfm}

procedure TFormCancelaCupomFechado.BitBtn1Click(Sender: TObject);

begin
CPF    := Edit1.Text;
Name   := Edit2.Text;
Adress := Edit3.Text;
Close;
end;

procedure TFormCancelaCupomFechado.LimparClick(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
end;

end.
