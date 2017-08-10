unit Unit_FormaPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TForm_Pagamento = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    EfetuaPagamento: TButton;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Sair: TButton;
    procedure EfetuaPagamentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Pagamento: TForm_Pagamento;
  iRetorno, ACK, ST1, ST2, ST3 : integer;

implementation
function Bematech_FI_EfetuaFormaPagamento( paymentForm: String; value: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : String): Integer; StdCall; External 'BEMAFI32.DLL';
{$R *.dfm}

procedure TForm_Pagamento.EfetuaPagamentoClick(Sender: TObject);
var
cPaymentForm, cValue, cForma : string;

begin
if ComboBox1.ItemIndex = 1 then
  cForma := 'Dinheiro';
if ComboBox1.ItemIndex = 2 then
  cForma := 'Cheque';
if ComboBox1.ItemIndex = 3 then
  cForma := 'Cartao Credito';
if ComboBox1.ItemIndex = 4 then
  cForma := 'Cartao Debito';
if ComboBox1.ItemIndex = 5 then
  cForma := 'Credito Loja';
if ComboBox1.ItemIndex = 6 then
  cForma := 'Vale Aliment.';
if ComboBox1.ItemIndex = 7 then
  cForma := 'Vale Refeicao';
if ComboBox1.ItemIndex = 8 then
  cForma := 'Vale Presente';
if ComboBox1.ItemIndex = 9 then
  cForma := 'Vale Combust.';
if ComboBox1.ItemIndex = 10 then
  cForma := 'Outros';

cPaymentForm         := cForma;
cValue               := Edit1.Text;

iRetorno := Bematech_FI_EfetuaFormaPagamento(cPaymentForm, cValue);
Memo1.Clear;
Memo1.Lines.Add('EfetuaFormaPagamento: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo1.Lines.Add('Retorno EfetuaFormaPagamento: ');
Memo1.Lines.Add('ACK: '+ IntToStr(ACK));
Memo1.Lines.Add('ST1: '+ IntToStr(ST1));
Memo1.Lines.Add('ST2: '+ IntToStr(ST2));
Memo1.Lines.Add('ST3: '+ IntToStr(ST3));
Close;
end;

procedure TForm_Pagamento.FormCreate(Sender: TObject);
begin
iRetorno := Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD( '1' );
end;

procedure TForm_Pagamento.SairClick(Sender: TObject);
begin
Close;
end;

end.
