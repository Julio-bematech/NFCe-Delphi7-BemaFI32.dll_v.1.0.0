unit Unit_FormaPagamentoNFCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TForm_PagamentoNFCe = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    EfetuaPagamentoNFCe: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Sair: TButton;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Edit3: TEdit;
    procedure EfetuaPagamentoNFCeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_PagamentoNFCe: TForm_PagamentoNFCe;
  iRetorno, ACK, ST1, ST2, ST3 : integer;

implementation
function Bematech_FI_EfetuaFormaPagamentoNFCe( paymentForm: String; value: String; licensingCNPJ: String; licensingCode: String; authorizationCode: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'BEMAFI32.DLL';
{$R *.dfm}

procedure TForm_PagamentoNFCe.EfetuaPagamentoNFCeClick(Sender: TObject);
var
cPaymentForm, cValue, cForma, cBandeira : string;
clicensingCNPJ, clicensingCode, cAuthorizationCode : string;

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
clicensingCNPJ      := Edit2.Text;

if ComboBox2.ItemIndex = 1 then
  cBandeira := '01';
if ComboBox2.ItemIndex = 2 then
  cBandeira := '02';
if ComboBox2.ItemIndex = 3 then
  cBandeira := '03';
if ComboBox2.ItemIndex = 4 then
  cBandeira := '04';
if ComboBox2.ItemIndex = 5 then
  cBandeira := '99';

clicensingCode      := cBandeira;
cAuthorizationCode  := Edit3.Text;

iRetorno := Bematech_FI_EfetuaFormaPagamentoNFCe(cPaymentForm, cValue, clicensingCNPJ, clicensingCode, cAuthorizationCode);
Memo1.Clear;
Memo1.Lines.Add('EfetuaFormaPagamento: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo1.Lines.Add('Retorno EfetuaFormaPagamento: ');
Memo1.Lines.Add('ACK: '+ IntToStr(ACK));
Memo1.Lines.Add('ST1: '+ IntToStr(ST1));
Memo1.Lines.Add('ST2: '+ IntToStr(ST2));
Memo1.Lines.Add('ST3: '+ IntToStr(ST3));
end;

procedure TForm_PagamentoNFCe.FormCreate(Sender: TObject);
begin
iRetorno := Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD( '1' );
end;

procedure TForm_PagamentoNFCe.SairClick(Sender: TObject);
begin
Close;
end;

end.
