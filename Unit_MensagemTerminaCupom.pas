unit Unit_MensagemTerminaCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormTerminaFechamentoCupom = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtnOK: TBitBtn;
    Limpar: TButton;
    Mensagem: TMemo;
    Edit1: TEdit;
    Label3: TLabel;
    procedure LimparClick(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTerminaFechamentoCupom: TFormTerminaFechamentoCupom;
  MensagPromo, Tax : string;
  flagTerm : integer;

implementation

{$R *.dfm}

procedure TFormTerminaFechamentoCupom.LimparClick(Sender: TObject);
begin
Mensagem.Clear;
end;

procedure TFormTerminaFechamentoCupom.BitBtnOKClick(Sender: TObject);
begin
Tax := Edit1.Text;
flagTerm := 1;
MensagPromo := Mensagem.Text;
if Mensagem.Text <> '' then
 Close;
if Mensagem.Text = '' then
ShowMessage('Insira uma mensagem promocional!');
end;

end.
