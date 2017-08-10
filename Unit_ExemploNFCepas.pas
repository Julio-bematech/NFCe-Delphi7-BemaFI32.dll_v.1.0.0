unit Unit_ExemploNFCepas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons, ComCtrls, ShellApi, Unit_VendeItemCompleto, Unit_DadosConsumidorNFCe, Unit_FormaPagamento;

type
  TForm_Principal = class(TForm)
    GroupBox1: TGroupBox;
    AbreCupom: TButton;
    VendeItemCustom: TButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    IniciaFechamentoCupom: TButton;
    TerminaFechamentoCupom: TButton;
    Sair: TButton;
    Limpar: TButton;
    CupomCompleto: TButton;
    GroupBox3: TGroupBox;
    CancelaCupom: TButton;
    LeituraX: TButton;
    ReducaoZ: TButton;
    GroupBox5: TGroupBox;
    ProgramaAliquota: TButton;
    RadioGroup5: TRadioGroup;
    Label4: TLabel;
    Edit5: TEdit;
    RetornoAliquotas: TButton;
    GroupBox4: TGroupBox;
    logo: TImage;
    Button1: TButton;
    GroupBox7: TGroupBox;
    Memo1: TMemo;
    GroupBox8: TGroupBox;
    Memo2: TMemo;
    NumeroCupom: TButton;
    GroupBox6: TGroupBox;
    Label1: TLabel;
    ChaveAcessoNFCe: TButton;
    RadioGroup4: TRadioGroup;
    Edit2: TEdit;
    UltimaChaveAcessoNFCe: TButton;
    StatusUltimaNFCe: TButton;
    StatusUltimoCancelamentoNFCe: TButton;
    ProgramaContadorNFCe: TButton;
    ComboBox1: TComboBox;
    Edit6: TEdit;
    Label5: TLabel;
    Button2: TButton;
    VendeItemCompleto: TButton;
    DadosConsumidorNFCe: TButton;
    EfetuaFormaPagamento: TButton;
    procedure AbreCupomClick(Sender: TObject);
    procedure IniciaFechamentoCupomClick(Sender: TObject);
    procedure EfetuaFormaPagamentoClick(Sender: TObject);
    procedure TerminaFechamentoCupomClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure CupomCompletoClick(Sender: TObject);
    procedure CancelaCupomClick(Sender: TObject);
    procedure LeituraXClick(Sender: TObject);
    procedure ReducaoZClick(Sender: TObject);
    procedure NumeroCupomClick(Sender: TObject);
    procedure ChaveAcessoNFCeClick(Sender: TObject);
    procedure UltimaChaveAcessoNFCeClick(Sender: TObject);
    procedure StatusUltimaNFCeClick(Sender: TObject);
    procedure StatusUltimoCancelamentoNFCeClick(Sender: TObject);
    procedure ProgramaContadorNFCeClick(Sender: TObject);
    procedure VendeItemCustomClick(Sender: TObject);
    procedure ProgramaAliquotaClick(Sender: TObject);
    procedure RetornoAliquotasClick(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StatusDaNFCe;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure VendeItemCompletoClick(Sender: TObject);
    procedure DadosConsumidorNFCeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Principal: TForm_Principal;
  iRetorno, iRetornoX, ACK, ST1, ST2, ST3 : integer;
  Retorno, RetFuncao, TipoLayout, Layout : string;

implementation

function Bematech_FI_VendeItemCompleto( Codigo: string;
										EAN13: string;
										Descricao: string;
										IndiceDepartamento: string;
										Aliquota: string;
										UnidadeMedida: string;
										TipoQuantidade: string;
										CasasDecimaisQtde: string;
										Quantidade: string;
										CasasDecimaisValor: string;
										ValorUnitario: string;
										TipoDesconto: string;
										ValorAcrescimo: string;
										ValorDesconto: string;
										ArredondaTrunca: string;
										NCM: string;
										CFOP: string;
										InformacaoAdicional: string;
										CST_ICMS: string;
										OrigemProduto: string;
										ItemListaServico: string;
										CodigoISS: string;
										NaturezaOperacaoISS: string;
										IndicadorIncentivoFiscal: string;
										CodigoIBGE: string; CSOSN: string;
										ValorBaseCalculoSimples: string;
										ValorICMSRetidoSimples: string;
										ModalidadeBaseCalculo: string;
										PercentualReducaoBase: string;
										ModalidadeBC: string;
										PercentualMargemICMS: string;
										PercentualBCICMS: string;
										ValorReducaoBCICMS: string;
										ValorAliquotaICMS: string;
										ValorICMS: string;
										ValorICMSDesonerado: string;
										MotivoDesoneracaoICMS: string;
										AliquotaCalculoCredito: string;
										ValorCreditoICMS: string;
										Reservado01: string;
										Reservado02: string;
										Reservado03: string;
										Reservado04: string;
										Reservado05: string;
										Reservado06: string;
										Reservado07: string;
										Reservado08: string;
										Reservado09: string;
										Reservado10: string;
										Reservado11: string;
										Reservado12: string;
										Reservado13: string;
										Reservado14: string;
										Reservado15: string;
										Reservado16: string;
										Reservado17: string;
										Reservado18: string;
										Reservado19: string;
										Reservado20: string;
										Reservado21: string;
										Reservado22: string;
										Reservado23: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoNFCe( paymentForm: String; value: String; licensingCNPJ: String; licensingCode: String; authorizationCode: String ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_ChaveAcessoNFCe (cIndice: string; cContador: string; cChaveAcesso: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UltimaChaveAcessoNFCe (cChaveAcesso: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_StatusUltimaNFCe(Status: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_StatusUltimoCancelamentoNFCe (cStatus: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaContadorNFCe (cIndice: string; cContador: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieNFCe (var cNumSerie: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosEnvioNFCe (TipoLayout: string; TipoEmissao: string; cEmail : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_LeituraXSerial: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom ( cMensagem: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_DadosConsumidorNFCe (String: CPF, String: name, String: address, String: complement, String: number, String: neighborhood, String: IBGECode, String: city, String: UF, String: CEP, String: countyCode, String: country, String: phone, String: stateRegistrationIndicator, String: stateRegistration, String: SUFRAMACode, String: email;): Integer; StdCall; External 'BEMAFI32.DLL';
{$R *.dfm}
//=========================================

//BEMATECH SOFTWARE PARTNERS
// JÚLIO CÉSAR BRUNO
//ATUALIZADO 09-12-2014
//VERSÃO 1.0.10
//==========================================

procedure TForm_Principal.AbreCupomClick(Sender: TObject);
var
cCPF : string;

begin
cCPF := '';
iRetorno := Bematech_FI_AbreCupom( pchar( '' ) );
Memo1.Lines.Add('Abre Cupom');
Memo1.Lines.Add('CPF: '+cCPF);
Memo1.Lines.Add('----------------------------------------------------------');
Memo2.Clear;
Memo2.Lines.Add('AbreCupom: '+ IntToStr(iRetorno));

iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
if ST3 = 66 then
  ShowMessage('Redução Z pendente!');

Memo2.Lines.Add('Retorno AbreCupom: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));

//#### DADOSCONSUMIDORNFCE #####################################################

//iRetorno := Bematech_FI_DadosConsumidorNFCe(CPF, name, address, complement, number, neighborhood, IBGECode, city, UF, CEP, countyCode, country, phone, stateRegistrationIndicator, stateRegistration, SUFRAMACode, email);

//##############################################################################
end;

procedure TForm_Principal.IniciaFechamentoCupomClick(Sender: TObject);
var
Layout, cEmail, Emissao, cAcreDesc, Acre, cTipoAcreDesc, cValorAcreDesc, TipoEmissao : string;

begin
TipoLayout  := IntToStr(RadioGroup1.ItemIndex);
if TipoLayout = '0' then
  Layout := 'DANFE normal';
if TipoLayout = '1' then
  Layout := 'DANFE simplificada';

TipoEmissao := IntToStr(RadioGroup2.ItemIndex);

if TipoEmissao = '0' then
  Emissao := 'Sem emissão';
if TipoEmissao = '1' then
  Emissao := 'Somente impressão';
if TipoEmissao = '2' then
  Emissao := 'Somente envio de e-mail';
if TipoEmissao = '3' then
  Emissao := 'Somente geração de arquivo PDF';
if TipoEmissao = '4' then
  Emissao := 'Impressão + envio de e-mail';
if TipoEmissao = '5' then
  Emissao := 'Impressão + geração de arquivo PDF';
if TipoEmissao = '6' then
  Emissao := 'Impressão + envio de e-mail + geração de arquivo PDF';
if TipoEmissao = '7' then
  Emissao := 'Envio de e-mail e geração de arquivo PDF';

cEmail := '';
iRetorno := Bematech_FI_DadosEnvioNFCe (TipoLayout, TipoEmissao, cEmail);
Memo2.Clear;
Memo2.Lines.Add('DadosEnvioNFCe: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno DadosEnvioNFCe: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
cAcreDesc      := 'A';
if cAcreDesc = 'A' then
  Acre := 'Acréscimo: ';
if cAcreDesc = 'D' then
  Acre := 'Desconto: ';

cTipoAcreDesc  := '%';
cValorAcreDesc := '00';

iRetorno := Bematech_FI_IniciaFechamentoCupom( pchar( cAcreDesc ), pchar( cTipoAcreDesc ), pchar( cValorAcreDesc ) );
Memo2.Lines.Add('IniciaFechamentoCupom: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno IniciaFechamentoCupom: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
Memo1.Lines.Add(Acre+cValorAcreDesc+cTipoAcreDesc);
Memo1.Lines.Add('Tipo de Layout: '+Layout);
Memo1.Lines.Add('Tipo de Emissão: '+Emissao);
Memo1.Lines.Add('E-mail: '+cEmail);
Memo1.Lines.Add('----------------------------------------------------------');

end;

procedure TForm_Principal.EfetuaFormaPagamentoClick(Sender: TObject);
var
//cFormaPgto, cValorPago : string;
cPaymentForm, cValue : string;
clicensingCNPJ, clicensingCode, cAuthorizationCode : string;

begin
{cFormaPgto := Edit1.Text;
cValorPago := '10,00';
iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto ), pchar( cValorPago ) );
Memo1.Lines.Add('Forma de Pagamento: '+cFormaPgto);
Memo1.Lines.Add('Valor: '+cValorPago);
Memo1.Lines.Add('----------------------------------------------------------');
Memo2.Clear;
Memo2.Lines.Add('EfetuaFormaPagamento: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno EfetuaFormaPagamento: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));}

Form_Pagamento := TForm_Pagamento.Create(Application);
Form_Pagamento.ShowModal;
end;

procedure TForm_Principal.TerminaFechamentoCupomClick(Sender: TObject);
var
cMsgPromocional, cMsg1, cMsg2, cChaveAcesso, Coo, NumeroCupom : string;
iConta : integer;

begin
for iConta := 1 to 7 do NumeroCupom := NumeroCupom + ' ';
iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );
Coo := NumeroCupom;
cMsg1 := 'Número do COO: '+Coo+'                           ';
cMsg2 := 'Tipo de Layout: '+ Layout;
cMsgPromocional := cMsg1+
  '                                 '+cMsg2+
  'Obrigado, volte sempre !!!                      ';

  //Campo + StringOfChar(´ ´, 35 - Length(Campo))

iRetorno := Bematech_FI_TerminaFechamentoCupom( cMsgPromocional );
Memo2.Clear;
Memo2.Lines.Add('TerminaFechamentoCupom: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
if ST3<>0 then
  StatusDaNFCe;
Memo2.Lines.Add('Retorno TerminaFechamentoCupom: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
Memo1.Lines.Add('Mensagem: '+cMsgPromocional);
Memo1.Lines.Add('----------------------------------------------------------');


for iConta := 1 to 45 do cChaveAcesso := cChaveAcesso + ' '; //destinado a receber a chave de acesso, com 44 caracteres.
iRetorno:= Bematech_FI_UltimaChaveAcessoNFCe (cChaveAcesso);

Memo1.Lines.Add('Chave de Acesso: '+cChaveAcesso);
Memo1.Lines.Add('----------------------------------------------------------');

end;

procedure TForm_Principal.SairClick(Sender: TObject);
begin
Close;
end;

procedure TForm_Principal.LimparClick(Sender: TObject);
begin
Memo1.Clear;
end;

procedure TForm_Principal.CupomCompletoClick(Sender: TObject);
var
cCPF : string;
Codigo: string;
EAN13: string;
Descricao: string;
IndiceDepartamento: string;
Aliquota: string;
UnidadeMedida: string;
TipoQuantidade: string;
CasasDecimaisQtde: string;
Quantidade: string;
CasasDecimaisValor: string;
ValorUnitario: string;
TipoDesconto: string;
ValorAcrescimo: string;
ValorDesconto: string;
ArredondaTrunca: string;
NCM: string;
CFOP: string;
InformacaoAdicional: string;
CST_ICMS: string;
OrigemProduto: string;
ItemListaServico: string;
CodigoISS: string;
NaturezaOperacaoISS: string;
IndicadorIncentivoFiscal: string;
CodigoIBGE: string;
CSOSN: string;
ValorBaseCalculoSimples: string;
ValorICMSRetidoSimples: string;
ModalidadeBaseCalculo: string;
PercentualReducaoBase: string;
ModalidadeBC: string;
PercentualMargemICMS: string;
PercentualBCICMS: string;
ValorReducaoBCICMS: string;
ValorAliquotaICMS: string;
ValorICMS: string;
ValorICMSDesonerado: string;
MotivoDesoneracaoICMS: string;
AliquotaCalculoCredito: string;
ValorCreditoICMS: string;
Reservado01 :  string;
Reservado02 :  string;
Reservado03 :  string;
Reservado04 :  string;
Reservado05 :  string;
Reservado06 :  string;
Reservado07 :  string;
Reservado08 :  string;
Reservado09 :  string;
Reservado10 :  string;
Reservado11 :  string;
Reservado12 :  string;
Reservado13 :  string;
Reservado14 :  string;
Reservado15 :  string;
Reservado16 :  string;
Reservado17 :  string;
Reservado18 :  string;
Reservado19 :  string;
Reservado20 :  string;
Reservado21 :  string;
Reservado22 :  string;
Reservado23 :  string;
cAcreDesc, cTipoAcreDesc, cValorAcreDesc : string;
Acre : string;
cFormaPgto, cValorPago : string;
cMsgPromocional : string;
TipoLayout, TipoEmissao, cEmail : string;
Emissao : string;
Layout, cTaxas, NumeroCupom, Coo, cChaveAcesso : string;
iConta : integer;

begin
iRetorno := Bematech_FI_AbreCupom( pchar( '' ) );
Memo1.Lines.Add('Abre Cupom');
Memo1.Lines.Add('CPF: '+cCPF);
Memo1.Lines.Add('----------------------------------------------------------');

  Codigo := '1234567890';
  EAN13 := '7891000081754';
  Descricao := 'Água Mineral';
  IndiceDepartamento := '01';
  Aliquota := 'I1';
  UnidadeMedida := 'UN';
  TipoQuantidade := 'I';
  CasasDecimaisQtde := '2';
  Quantidade := '1,00';
  CasasDecimaisValor := '2';
  ValorUnitario := '0,50';
  TipoDesconto := '$';
  ValorAcrescimo := '00';
  ValorDesconto := '00';
  ArredondaTrunca := 'A';
  NCM := '62000000';
  CFOP := '5101';
  InformacaoAdicional := 'INFORMAÇÕES';
  OrigemProduto := '0';
  CST_ICMS := '00';
  CodigoIBGE := '5103403';
  CodigoISS := '';
  NaturezaOperacaoISS := '';
  IndicadorIncentivoFiscal := '';
  ItemListaServico := '1234';
  CSOSN := '';
  ValorBaseCalculoSimples := '';
  ValorICMSRetidoSimples := '';
  ModalidadeBaseCalculo := '';
  PercentualReducaoBase := '';
  ModalidadeBC := '0';
  PercentualMargemICMS := '';
  PercentualBCICMS := '';
  ValorReducaoBCICMS := '';
  ValorAliquotaICMS := '';
  ValorICMS := '';
  ValorICMSDesonerado := '';
  MotivoDesoneracaoICMS := '';
  AliquotaCalculoCredito := '';
  ValorCreditoICMS := '';
  Reservado01 := ''; //tributos
  Reservado02 := '';
  Reservado03 := '';
  Reservado04 := '';
  Reservado05 := '';
  Reservado06 := '';
  Reservado07 := '';
  Reservado08 := '';
  Reservado09 := '';
  Reservado10 := '';
  Reservado11 := '';
  Reservado12 := '';
  Reservado13 := '';
  Reservado14 := '';
  Reservado15 := '';
  Reservado16 := '';
  Reservado17 := '';
  Reservado18 := '';
  Reservado19 := '';
  Reservado20 := '';
  Reservado21 := '';
  Reservado22 := '';
  Reservado23 := '';
  iRetorno := Bematech_FI_VendeItemCompleto( pchar( Codigo ), pchar( EAN13 ), pchar( Descricao ), pchar( IndiceDepartamento ), pchar( Aliquota ), pchar( UnidadeMedida ), pchar( TipoQuantidade ), pchar( CasasDecimaisQtde ), pchar( Quantidade ), pchar( CasasDecimaisValor ), pchar( ValorUnitario ), pchar( TipoDesconto ), pchar( ValorAcrescimo ), pchar( ValorDesconto ), pchar( ArredondaTrunca ), pchar( NCM ), pchar( CFOP ), pchar( InformacaoAdicional ), pchar( CST_ICMS ), pchar( OrigemProduto ), pchar( ItemListaServico ), pchar( CodigoISS ), pchar( NaturezaOperacaoISS ), pchar( IndicadorIncentivoFiscal ), pchar(
CodigoIBGE ), pchar( CSOSN ), pchar( ValorBaseCalculoSimples ), pchar( ValorICMSRetidoSimples ), pchar( ModalidadeBaseCalculo ), pchar( PercentualReducaoBase ), pchar( ModalidadeBC ), pchar( PercentualMargemICMS ), pchar( PercentualBCICMS ), pchar( ValorReducaoBCICMS ), pchar( ValorAliquotaICMS ), pchar( ValorICMS ), pchar( ValorICMSDesonerado ), pchar( MotivoDesoneracaoICMS ), pchar( AliquotaCalculoCredito ), pchar( ValorCreditoICMS ), pchar( Reservado01 ), pchar( Reservado02 ), pchar( Reservado03 ), pchar( Reservado04 ), pchar( Reservado05 ), pchar( Reservado06 ), pchar( Reservado07 ), pchar( Reservado08 ), pchar( Reservado09 ), pchar( Reservado10 ), pchar( Reservado11 ), pchar( Reservado12 ), pchar( Reservado13 ), pchar( Reservado14 ), pchar( Reservado15 ), pchar( Reservado16 ), pchar( Reservado17 ), pchar( Reservado18 ), pchar( Reservado19 ), pchar( Reservado20 ), pchar( Reservado21 ), pchar( Reservado22 ), pchar( Reservado23 ) );
Memo1.Lines.Add('Código: '+Codigo);
Memo1.Lines.Add('EAN13: '+EAN13);
Memo1.Lines.Add('Descrição: '+Descricao);
Memo1.Lines.Add('Índice Departamento: '+IndiceDepartamento);
Memo1.Lines.Add('Alíquota: '+Aliquota);
Memo1.Lines.Add('Unidade de Medida: '+UnidadeMedida);
Memo1.Lines.Add('Tipo de Quantidade: '+TipoQuantidade);
Memo1.Lines.Add('Qtde. de casas decimais: '+CasasDecimaisQtde);
Memo1.Lines.Add('Quantidade: '+Quantidade);
Memo1.Lines.Add('Casas Decimais: '+CasasDecimaisValor);
Memo1.Lines.Add('Valor Unitário'+ValorUnitario);
Memo1.Lines.Add('Tipo de desconto: '+TipoDesconto);
Memo1.Lines.Add('Valor Acréscimo: '+ValorAcrescimo);
Memo1.Lines.Add('Valor Desconto: '+ValorDesconto);
Memo1.Lines.Add('Arredonda/Trunca: '+ArredondaTrunca);
Memo1.Lines.Add('NCM: '+NCM);
Memo1.Lines.Add('CFOP: '+CFOP);
Memo1.Lines.Add('Informação Adicional: '+InformacaoAdicional);
Memo1.Lines.Add('Origem do Produto: '+OrigemProduto);
Memo1.Lines.Add('CST ICMS: '+CST_ICMS);
Memo1.Lines.Add('Código IBGE: '+CodigoIBGE);
Memo1.Lines.Add('Código ISS: '+CodigoISS);
Memo1.Lines.Add('Nat. Oper. ISS: '+NaturezaOperacaoISS);
Memo1.Lines.Add('Ind. Incentivo Fiscal: '+IndicadorIncentivoFiscal);
Memo1.Lines.Add('Item Lista Serviço: '+ItemListaServico);
Memo1.Lines.Add('CSOSN: '+CSOSN);
Memo1.Lines.Add('Valor BC Simples: '+ValorBaseCalculoSimples);
Memo1.Lines.Add('ICMS retido Simples: '+ValorICMSRetidoSimples);
Memo1.Lines.Add('ModalidadeBC: '+ModalidadeBaseCalculo);
Memo1.Lines.Add('Redução Base: '+PercentualReducaoBase);
Memo1.Lines.Add('Modalidade BC: '+ModalidadeBC);
Memo1.Lines.Add('Margem ICMS: '+PercentualMargemICMS);
Memo1.Lines.Add('Percent. BC ICMS: '+PercentualBCICMS);
Memo1.Lines.Add('Redução BC ICMS: '+ValorReducaoBCICMS);
Memo1.Lines.Add('Aliquota ICMS: '+ValorAliquotaICMS);
Memo1.Lines.Add('ICMS: '+ValorICMS);
Memo1.Lines.Add('ICMS Desonerado: '+ValorICMSDesonerado);
Memo1.Lines.Add('Motivo Deson. ICMS: '+MotivoDesoneracaoICMS);
Memo1.Lines.Add('Aliq. Calculo Crédito: '+AliquotaCalculoCredito);
Memo1.Lines.Add('Crédito ICMS: '+ValorCreditoICMS);
Memo1.Lines.Add('----------------------------------------------------------');

begin
TipoLayout  := IntToStr(RadioGroup2.ItemIndex);
if TipoLayout = '0' then
  Layout := 'DANFE normal';
if TipoLayout = '1' then
  Layout := 'DANFE simplificada';

TipoEmissao := IntToStr(RadioGroup1.ItemIndex);

if TipoEmissao = '0' then
  Emissao := 'Sem emissão';
if TipoEmissao = '1' then
  Emissao := 'Somente impressão';
if TipoEmissao = '2' then
  Emissao := 'Somente impressão';

cEmail := 'joao@joao.com.br';

iRetorno := Bematech_FI_DadosEnvioNFCe (pchar(TipoLayout), pchar(TipoEmissao), pchar(cEmail));

cAcreDesc      := 'A';
if cAcreDesc = 'A' then
  Acre := 'Acréscimo: ';
if cAcreDesc = 'D' then
  Acre := 'Desconto: ';

cTipoAcreDesc  := '%';
cValorAcreDesc := '00';

iRetorno := Bematech_FI_IniciaFechamentoCupom( pchar( cAcreDesc ), pchar( cTipoAcreDesc ), pchar( cValorAcreDesc ) );
Memo1.Lines.Add(Acre+cValorAcreDesc+cTipoAcreDesc);
Memo1.Lines.Add('----------------------------------------------------------');

cFormaPgto := 'Dinheiro';
cValorPago := '50,00';
iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar( cFormaPgto ), pchar( cValorPago ) );
Memo1.Lines.Add('Forma de Pagamento: '+cFormaPgto);
Memo1.Lines.Add('Valor: '+cValorPago);
Memo1.Lines.Add('----------------------------------------------------------');

for iConta := 1 to 7 do NumeroCupom := NumeroCupom + ' ';
iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );
Coo := NumeroCupom;
cMsgPromocional := 'Número do COO: '+Coo+#10+'Obrigado, volte sempre !!!';
iRetornoX := Bematech_FI_TerminaFechamentoCupom( cMsgPromocional );
Memo1.Lines.Add('Mensagem: '+cMsgPromocional);
Memo1.Lines.Add('----------------------------------------------------------');


for iConta := 1 to 45 do cChaveAcesso := cChaveAcesso + ' '; //destinado a receber a chave de acesso, com 44 caracteres.
iRetorno:= Bematech_FI_UltimaChaveAcessoNFCe (cChaveAcesso);

Memo1.Lines.Add('Chave de Acesso: '+cChaveAcesso);
Memo1.Lines.Add('----------------------------------------------------------');

Memo2.Clear;
Memo2.Lines.Add('TerminaFechamentoCupom: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
if ST3<>0 then
  StatusDaNFCe;
Memo2.Lines.Add('Retorno TerminaFechamentoCupom: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
end;
end;

procedure TForm_Principal.CancelaCupomClick(Sender: TObject);
begin
iRetorno := Bematech_FI_CancelaCupom();
Memo2.Clear;
Memo2.Lines.Add('CancelaCupom: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno CancelaCupom: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));

end;

procedure TForm_Principal.LeituraXClick(Sender: TObject);
begin
iRetorno := Bematech_FI_LeituraX();
Memo2.Clear;
Memo2.Lines.Add('LeituraX: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno LeituraX: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
end;

procedure TForm_Principal.ReducaoZClick(Sender: TObject);
begin
iRetorno := Bematech_FI_ReducaoZ( pchar( '' ), pchar( '' ) );
Memo2.Clear;
Memo2.Lines.Add('ReducaoZ: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno ReducaoZ: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
Memo1.Lines.Add('Redução Z na data '+DateToStr(Date)+' emitida!');
Memo1.Lines.Add('----------------------------------------------------------');
end;

procedure TForm_Principal.NumeroCupomClick(Sender: TObject);
var
NumeroCupom : string;
iConta : integer;

begin
for iConta := 1 to 7 do NumeroCupom := NumeroCupom + ' ';
iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );
Memo2.Clear;
Memo2.Lines.Add('NumeroCupom: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno NumeroCupom: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
Memo1.Lines.Add('Número do último COO: '+NumeroCupom);
Memo1.Lines.Add('----------------------------------------------------------');
end;

procedure TForm_Principal.ChaveAcessoNFCeClick(Sender: TObject);

var
cIndice, cContador, cChaveAcesso : string;
iConta : integer;

begin
cIndice := IntToStr(RadioGroup4.ItemIndex); //0 - COO / 1 - CCF
cContador := Edit2.Text;//Tamanho máximo de 6 caracteres para impressoras do convênio ICMS 85/01 e 9 caracteres para ICMS 09/09.
for iConta := 1 to 44 do cChaveAcesso := cChaveAcesso + ' '; //destinado a receber a chave de acesso, com 44 caracteres

iRetorno := Bematech_FI_ChaveAcessoNFCe ( cIndice, cContador, cChaveAcesso);
Memo2.Clear;
Memo2.Lines.Add('ChaveAcessoNFCe: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno ChaveAcessoNFCe: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));

Memo1.Lines.Add('Tipo: '+cIndice+' --> 0 - COO / 1 - CCF');
Memo1.Lines.Add('Número: '+cContador);
if (cChaveAcesso = Null) then
  Memo1.Lines.Add('Não existe chave de acesso para esse COO')
else
  Memo1.Lines.Add('Chave de Acesso: '+cChaveAcesso);
Memo1.Lines.Add('----------------------------------------------------------');

end;


procedure TForm_Principal.UltimaChaveAcessoNFCeClick(Sender: TObject);
var
cChaveAcesso: string;
iConta : integer;

begin
for iConta := 1 to 44 do cChaveAcesso := cChaveAcesso + ' '; //destinado a receber a chave de acesso, com 44 caracteres.
iRetorno:= Bematech_FI_UltimaChaveAcessoNFCe (cChaveAcesso);
Memo1.Lines.Add('Última Chave de Acesso:');
Memo1.Lines.Add(cChaveAcesso);
Memo1.Lines.Add('----------------------------------------------------------');
Memo2.Clear;
Memo2.Lines.Add('UltimaChaveAcessoNFCe: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno UltimaChaveAcessoNFCe: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));

end;

//++++++++PROCEDURE STATUSULTIMANFCE++++++++++++++++++++++++++++++++++++
procedure TForm_Principal.StatusDaNFCe;
Var
Ret:integer;
Status : string;
iConta : integer;

begin
for iConta := 1 to 7 do Status := Status + ' ';
iRetorno := Bematech_FI_StatusUltimaNFCe(Status);
Ret:=strToInt(Status);
case Ret of
100:ShowMessage('100: Autorizado o uso da NFC-e');
101:ShowMessage('101: Cancelamento de NFC-e homologado');
102:ShowMessage('102: Inutilização de número homologado');
103:ShowMessage('103: Lote recebido com sucesso');
104:ShowMessage('104: Lote processado');
105:ShowMessage('105: Lote em processamento');
106:ShowMessage('106: Lote não localizado');
107:ShowMessage('107: Serviço em Operação');
108:ShowMessage('108: Serviço Paralisado Momentaneamente (curto prazo)');
109:ShowMessage('109: Serviço Paralisado sem Previsão');
110:ShowMessage('110: Uso Denegado');
111:ShowMessage('111: Consulta cadastro com uma ocorrência');
112:ShowMessage('112: Consulta cadastro com mais de uma ocorrência');
128:ShowMessage('128: Lote de Evento Processado');
135:ShowMessage('135: Evento registrado e vinculado a NFC-e');
136:ShowMessage('136: Evento registrado, mas não vinculado a NFC-e');
201:ShowMessage('201: O numero máximo de numeração de NFC-e a inutilizar ultrapassou o limite');
202:ShowMessage('202: Falha no reconhecimento da autoria ou integridade do arquivo digital');
203:ShowMessage('203: Emissor não habilitado para emissão da NFC-e');
204:ShowMessage('204: Duplicidade de NFC-e [nRec:999999999999999]');
205:ShowMessage('205: NFC-e está denegada na base de dados da SEFAZ [nRec:999999999999999]');
206:ShowMessage('206: NFC-e já está inutilizada na Base de dados da SEFAZ');
207:ShowMessage('207: CNPJ do emitente inválido');
208:ShowMessage('208: Rejeição: CNPJ do destinatário inválido');
209:ShowMessage('209: Rejeição: IE do emitente inválida');
210:ShowMessage('210: Rejeição: IE do destinatário inválida');
211:ShowMessage('211: Rejeição: IE do substituto inválida');
212:ShowMessage('212: Rejeição: Data de emissão NFC-e posterior a data de recebimento');
213:ShowMessage('213: Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital');
214:ShowMessage('214: Rejeição: Tamanho da mensagem excedeu o limite estabelecido');
215:ShowMessage('215: Rejeição: Falha no schema XML');
216:ShowMessage('216: Rejeição: Chave de Acesso difere da cadastrada');
217:ShowMessage('217: Rejeição: NFC-e não consta na base de dados da SEFAZ');
218:ShowMessage('218: NFC-e já está cancelada na base de dados da SEFAZ [nRec:999999999999999]');
219:ShowMessage('219: Rejeição: Circulação da NFC-e verificada');
220:ShowMessage('220: Rejeição: Prazo de Cancelamento superior ao previsto na Legislação');
221:ShowMessage('221: Rejeição: Confirmado o recebimento da NFC-e pelo destinatário');
222:ShowMessage('222: Rejeição: Protocolo de Autorização de Uso difere do cadastrado');
223:ShowMessage('223: Rejeição: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta');
224:ShowMessage('224: Rejeição: A faixa inicial é maior que a faixa final');
225:ShowMessage('225: Rejeição: Falha no Schema XML do lote de NFC-e');
226:ShowMessage('226: Rejeição: Código da UF do Emitente diverge da UF autorizadora');
227:ShowMessage('227: Rejeição: Erro na Chave de Acesso - Campo Id – falta a literal NFC-e');
228:ShowMessage('228: Rejeição: Data de Emissão muito atrasada');
229:ShowMessage('229: Rejeição: IE do emitente não informada');
230:ShowMessage('230: Rejeição: IE do emitente não cadastrada');
231:ShowMessage('231: Rejeição: IE do emitente não vinculada ao CNPJ');
232:ShowMessage('232: Rejeição: IE do destinatário não informada');
233:ShowMessage('233: Rejeição: IE do destinatário não cadastrada');
234:ShowMessage('234: Rejeição: IE do destinatário não vinculada ao CNPJ');
235:ShowMessage('235: Rejeição: Inscrição SUFRAMA inválida');
236:ShowMessage('236: Rejeição: Chave de Acesso com dígito verificador inválido');
237:ShowMessage('237: Rejeição: CPF do destinatário inválido');
238:ShowMessage('238: Rejeição: Cabeçalho - Versão do arquivo XML superior a Versão vigente');
239:ShowMessage('239: Rejeição: Cabeçalho - Versão do arquivo XML não suportada');
240:ShowMessage('240: Rejeição: Cancelamento/Inutilização - Irregularidade Fiscal do Emitente');
241:ShowMessage('241: Rejeição: Um número da faixa já foi utilizado');
242:ShowMessage('242: Rejeição: Cabeçalho - Falha no Schema XML');
243:ShowMessage('243: Rejeição: XML Mal Formado');
244:ShowMessage('244: Rejeição: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente');
245:ShowMessage('245: Rejeição: CNPJ Emitente não cadastrado');
246:ShowMessage('246: Rejeição: CNPJ Destinatário não cadastrado');
247:ShowMessage('247: Rejeição: Sigla da UF do Emitente diverge da UF autorizadora');
248:ShowMessage('248: Rejeição: UF do Recibo diverge da UF autorizadora');
249:ShowMessage('249: Rejeição: UF da Chave de Acesso diverge da UF autorizadora');
250:ShowMessage('250: Rejeição: UF diverge da UF autorizadora');
251:ShowMessage('251: Rejeição: UF/Município destinatário não pertence a SUFRAMA');
252:ShowMessage('252: Rejeição: Ambiente informado diverge do Ambiente de recebimento');
253:ShowMessage('253: Rejeição: Digito Verificador da chave de acesso composta inválida');
254:ShowMessage('254: Rejeição: NFC-e complementar não possui NFC-e referenciada');
255:ShowMessage('255: Rejeição: NFC-e complementar possui mais de uma NF referenciada');
256:ShowMessage('256: Rejeição: Uma NFC-e da faixa já está inutilizada na Base de dados da SEFAZ');
257:ShowMessage('257: Rejeição: Solicitante não habilitado para emissão da NFC-e');
258:ShowMessage('258: Rejeição: CNPJ da consulta inválido');
259:ShowMessage('259: Rejeição: CNPJ da consulta não cadastrado como contribuinte na UF');
260:ShowMessage('260: Rejeição: IE da consulta inválida');
261:ShowMessage('261: Rejeição: IE da consulta não cadastrada como contribuinte na UF');
262:ShowMessage('262: Rejeição: UF não fornece consulta por CPF');
263:ShowMessage('263: Rejeição: CPF da consulta inválido');
264:ShowMessage('264: Rejeição: CPF da consulta não cadastrado como contribuinte na UF');
265:ShowMessage('265: Rejeição: Sigla da UF da consulta difere da UF do Web Service');
266:ShowMessage('266: Rejeição: Série utilizada não permitida no Web Service');
267:ShowMessage('267: Rejeição: NFC-e Complementar referencia uma NFC-e inexistente');
268:ShowMessage('268: Rejeição: NFC-e Complementar referencia uma outra NFC-e Complementar');
269:ShowMessage('269: Rejeição: CNPJ Emitente da NFC-e Complementar difere do CNPJ da NFC-e Referenciada');
270:ShowMessage('270: Rejeição: Código Município do Fato Gerador: dígito inválido');
271:ShowMessage('271: Rejeição: Código Município do Fato Gerador: difere da UF do emitente');
272:ShowMessage('272: Rejeição: Código Município do Emitente: dígito inválido');
273:ShowMessage('273: Rejeição: Código Município do Emitente: difere da UF do emitente');
274:ShowMessage('274: Rejeição: Código Município do Destinatário: dígito inválido');
275:ShowMessage('275: Rejeição: Código Município do Destinatário: difere da UF do Destinatário');
276:ShowMessage('276: Rejeição: Código Município do Local de Retirada: dígito inválido');
277:ShowMessage('277: Rejeição: Código Município do Local de Retirada: difere da UF do Local de Retirada');
278:ShowMessage('278: Rejeição: Código Município do Local de Entrega: dígito inválido');
279:ShowMessage('279: Rejeição: Código Município do Local de Entrega: difere da UF do Local de Entrega');
280:ShowMessage('280: Rejeição: Certificado Transmissor inválido');
281:ShowMessage('281: Rejeição: Certificado Transmissor Data Validade');
282:ShowMessage('282: Rejeição: Certificado Transmissor sem CNPJ');
283:ShowMessage('283: Rejeição: Certificado Transmissor - erro Cadeia de Certificação');
284:ShowMessage('284: Rejeição: Certificado Transmissor revogado');
285:ShowMessage('285: Rejeição: Certificado Transmissor difere ICP-Brasil');
286:ShowMessage('286: Rejeição: Certificado Transmissor erro no acesso a LCR');
287:ShowMessage('287: Rejeição: Código Município do FG - ISSQN: dígito inválido');
288:ShowMessage('288: Rejeição: Código Município do FG - Transporte: dígito inválido');
289:ShowMessage('289: Rejeição: Código da UF informada diverge da UF solicitada');
290:ShowMessage('290: Rejeição: Certificado Assinatura inválido');
291:ShowMessage('291: Rejeição: Certificado Assinatura Data Validade');
292:ShowMessage('292: Rejeição: Certificado Assinatura sem CNPJ');
293:ShowMessage('293: Rejeição: Certificado Assinatura - erro Cadeia de Certificação');
294:ShowMessage('294: Rejeição: Certificado Assinatura revogado');
295:ShowMessage('295: Rejeição: Certificado Assinatura difere ICP-Brasil');
296:ShowMessage('296: Rejeição: Certificado Assinatura erro no acesso a LCR');
297:ShowMessage('297: Rejeição: Assinatura difere do calculado');
298:ShowMessage('298: Rejeição: Assinatura difere do padrão do Sistema');
299:ShowMessage('299: Rejeição: XML da área de cabeçalho com codificação diferente de UTF-8');
401:ShowMessage('401: Rejeição: CPF do remetente inválido');
402:ShowMessage('402: Rejeição: XML da área de dados com codificação diferente de UTF-8');
403:ShowMessage('403: Rejeição: O grupo de informações da NFC-e avulsa é de uso exclusivo do Fisco');
404:ShowMessage('404: Rejeição: Uso de prefixo de namespace não permitido');
405:ShowMessage('405: Rejeição: Código do país do emitente: dígito inválido');
406:ShowMessage('406: Rejeição: Código do país do destinatário: dígito inválido');
407:ShowMessage('407: Rejeição: O CPF só pode ser informado no campo emitente para a NFC-e avulsa');
409:ShowMessage('409: Rejeição: Campo cUF inexistente no elemento NFC-eCabecMsg do SOAP Header');
410:ShowMessage('410: Rejeição: UF informada no campo cUF não é atendida pelo Web Service');
411:ShowMessage('411: Rejeição: Campo versaoDados inexistente no elemento NFC-eCabecMsg do SOAP Header');
420:ShowMessage('420: Rejeição: Cancelamento para NFC-e já cancelada');
450:ShowMessage('450: Rejeição: Modelo da NFC-e diferente de 55');
451:ShowMessage('451: Rejeição: Processo de emissão informado inválido');
452:ShowMessage('452: Rejeição: Tipo Autorizador do Recibo diverge do Órgão Autorizador');
453:ShowMessage('453: Rejeição: Ano de inutilização não pode ser superior ao Ano atual');
454:ShowMessage('454: Rejeição: Ano de inutilização não pode ser iNFC-erior a 2006');
478:ShowMessage('478: Rejeição: Local da entrega não informado para faturamento direto de veículos novos');
489:ShowMessage('489: Rejeição: CNPJ informado inválido (DV ou zeros)');
490:ShowMessage('490: Rejeição: CPF informado inválido (DV ou zeros)');
491:ShowMessage('491: Rejeição: O tpEvento informado inválido');
492:ShowMessage('492: Rejeição: O verEvento informado inválido');
493:ShowMessage('493: Rejeição: Evento não atende o Schema XML específico');
494:ShowMessage('494: Rejeição: Chave de Acesso inexistente');
502:ShowMessage('502: Rejeição: Erro na Chave de Acesso - Campo Id não corresponde à concatenação dos campos correspondentes');
503:ShowMessage('503: Rejeição: Série utilizada fora da faixa permitida no SCAN (900-999)');
504:ShowMessage('504: Rejeição: Data de Entrada/Saída posterior ao permitido');
505:ShowMessage('505: Rejeição: Data de Entrada/Saída anterior ao permitido');
506:ShowMessage('506: Rejeição: Data de Saída menor que a Data de Emissão');
507:ShowMessage('507: Rejeição: O CNPJ do destinatário/remetente não deve ser informado em operação com o exterior');
508:ShowMessage('508: Rejeição: O CNPJ com conteúdo nulo só é válido em operação com exterior');
509:ShowMessage('509: Rejeição: Informado código de município diferente de “9999999” para operação com o exterior');
510:ShowMessage('510: Rejeição: Operação com Exterior e Código País destinatário é 1058 (Brasil) ou não informado');
511:ShowMessage('511: Rejeição: Não é de Operação com Exterior e Código País destinatário difere de 1058 (Brasil)');
512:ShowMessage('512: Rejeição: CNPJ do Local de Retirada inválido');
513:ShowMessage('513: Rejeição: Código Município do Local de Retirada deve ser 9999999 para UF retirada = EX');
514:ShowMessage('514: Rejeição: CNPJ do Local de Entrega inválido');
515:ShowMessage('515: Rejeição: Código Município do Local de Entrega deve ser 9999999 para UF entrega = EX');
516:ShowMessage('516: Rejeição: Falha no schema XML – inexiste a tag raiz esperada para a mensagem');
517:ShowMessage('517: Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz da mensagem');
518:ShowMessage('518: Rejeição: CFOP de entrada para NFC-e de saída');
519:ShowMessage('519: Rejeição: CFOP de saída para NFC-e de entrada');
520:ShowMessage('520: Rejeição: CFOP de Operação com Exterior e UF destinatário difere de EX');
521:ShowMessage('521: Rejeição: CFOP de Operação Estadual e UF do emitente difere da UF do destinatário para destinatário contribuinte do ICMS.');
522:ShowMessage('522: Rejeição: CFOP de Operação Estadual e UF emitente difere da UF remetente para remetente contribuinte do ICMS.');
523:ShowMessage('523: Rejeição: CFOP não é de Operação Estadual e UF emitente igual a UFdestinatário.');
524:ShowMessage('524: Rejeição: CFOP de Operação com Exterior e não informado NCM');
525:ShowMessage('525: Rejeição: CFOP de Importação e não informado dados da DI');
526:ShowMessage('526: Rejeição: CFOP de Exportação e não informado Local de Embarque');
527:ShowMessage('527: Rejeição: Operação de Exportação com informação de ICMS incompatível');
528:ShowMessage('528: Rejeição: Valor do ICMS difere do produto BC e Alíquota');
529:ShowMessage('529: Rejeição: NCM de informação obrigatória para produto tributado pelo IPI');
530:ShowMessage('530: Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal');
531:ShowMessage('531: Rejeição: Total da BC ICMS difere do somatório dos itens');
532:ShowMessage('532: Rejeição: Total do ICMS difere do somatório dos itens');
533:ShowMessage('533: Rejeição: Total da BC ICMS-ST difere do somatório dos itens');
534:ShowMessage('534: Rejeição: Total do ICMS-ST difere do somatório dos itens');
535:ShowMessage('535: Rejeição: Total do Frete difere do somatório dos itens');
536:ShowMessage('536: Rejeição: Total do Seguro difere do somatório dos itens');
537:ShowMessage('537: Rejeição: Total do Desconto difere do somatório dos itens');
538:ShowMessage('538: Rejeição: Total do IPI difere do somatório dos itens');
539:ShowMessage('539: Duplicidade de NFC-e com diferença na Chave de Acesso [chNFC-e: 99999999999999999999999999999999999999999999][nRec:999999999999999]');
540:ShowMessage('540: Rejeição: CPF do Local de Retirada inválido');
541:ShowMessage('541: Rejeição: CPF do Local de Entrega inválido');
542:ShowMessage('542: Rejeição: CNPJ do Transportador inválido');
543:ShowMessage('543: Rejeição: CPF do Transportador inválido');
544:ShowMessage('544: Rejeição: IE do Transportador inválida');
545:ShowMessage('545: Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão da mensagem');
546:ShowMessage('546: Rejeição: Erro na Chave de Acesso – Campo Id – falta a literal NFC-e');
547:ShowMessage('547: Rejeição: Dígito Verificador da Chave de Acesso da NFC-e Referenciada inválido');
548:ShowMessage('548: Rejeição: CNPJ da NF referenciada inválido.');
549:ShowMessage('549: Rejeição: CNPJ da NFC-e referenciada de produtor inválido.');
550:ShowMessage('550: Rejeição: CPF da NFC-e referenciada de produtor inválido.');
551:ShowMessage('551: Rejeição: IE da NFC-e referenciada de produtor inválido.');
552:ShowMessage('552: Rejeição: Dígito Verificador da Chave de Acesso do CT-e Referenciado inválido');
553:ShowMessage('553: Rejeição: Tipo autorizador do recibo diverge do Órgão Autorizador.');
554:ShowMessage('554: Rejeição: Série difere da faixa 0-899');
555:ShowMessage('555: Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador.');
556:ShowMessage('556: Rejeição: Justificativa de entrada em contingência não deve ser informada para tipo de emissão normal.');
557:ShowMessage('557: Rejeição: A Justificativa de entrada em contingência deve ser informada.');
558:ShowMessage('558: Rejeição: Data de entrada em contingência posterior a data de recebimento.');
559:ShowMessage('559: Rejeição: UF do Transportador não informada');
560:ShowMessage('560: Rejeição: CNPJ base do emitente difere do CNPJ base da primeira NFC-e do lote recebido');
561:ShowMessage('561: Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NFC-e');
562:ShowMessage('562: Rejeição: Código Numérico informado na Chave de Acesso difere do Código Numérico da NFC-e [chNFC-e:99999999999999999999999999999999999999999999]');
563:ShowMessage('563: Rejeição: Já existe pedido de Inutilização com a mesma faixa de inutilização');
564:ShowMessage('564: Rejeição: Total do Produto / Serviço difere do somatório dos itens');
565:ShowMessage('565: Rejeição: Falha no schema XML – inexiste a tag raiz esperada para o lote de NFC-e');
567:ShowMessage('567: Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão do lote de NFC-e');
568:ShowMessage('568: Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz do lote de NFC-e');
569:ShowMessage('569: Rejeição: Data de entrada em contingência muito atrasada');
570:ShowMessage('570: Rejeição: tpEmis = 3 só é válido na contingência SCAN');
571:ShowMessage('571: Rejeição: O tpEmis informado diferente de 3 para contingência SCAN');
572:ShowMessage('572: Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFC-e + nSeqEvento)');
573:ShowMessage('573: Rejeição: Duplicidade de Evento');
574:ShowMessage('574: Rejeição: O autor do evento diverge do emissor da NFC-e');
575:ShowMessage('575: Rejeição: O autor do evento diverge do destinatário da NFC-e');
576:ShowMessage('576: Rejeição: O autor do evento não é um órgão autorizado a gerar o evento');
577:ShowMessage('577: Rejeição: A data do evento não pode ser menor que a data de emissão da NFC-e');
578:ShowMessage('578: Rejeição: A data do evento não pode ser maior que a data do processamento');
579:ShowMessage('579: Rejeição: A data do evento não pode ser menor que a data de autorização para NFC-e não emitida em contingência');
580:ShowMessage('580: Rejeição: O evento exige uma NFC-e autorizada');
587:ShowMessage('587: Rejeição: Usar somente o namespace padrão da NFC-e');
588:ShowMessage('588: Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem');
590:ShowMessage('590: Rejeição: Informado CST para emissor do Simples Nacional (CRT=1)');
591:ShowMessage('591: Rejeição: Informado CSOSN para emissor que não é do Simples Nacional (CRT diferente de 1)');
592:ShowMessage('592: Rejeição: A NFC-e deve ter pelo menos um item de produto sujeito ao ICMS');
594:ShowMessage('594: Rejeição: O número de sequencia do evento informado é maior que o permitido');
595:ShowMessage('595: Rejeição: A versão do leiaute da NFC-e utilizada não é mais válida');
596:ShowMessage('596: Rejeição: Ambiente de homologação indisponível para recepção de NFC-e da versão 1.10.');
597:ShowMessage('597: Rejeição: CFOP de Importação e não informado dados de IPI');
598:ShowMessage('598: Rejeição: NFC-e emitida em ambiente de homologação com Razão Social do destinatário diferente de NFC-e EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL');
599:ShowMessage('599: Rejeição: CFOP de Importação e não informado dados de II');
601:ShowMessage('601: Rejeição: Total do II difere do somatório dos itens');
602:ShowMessage('602: Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ICMS');
603:ShowMessage('603: Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ICMS');
604:ShowMessage('604: Rejeição: Total do vOutro difere do somatório dos itens');
605:ShowMessage('605: Rejeição: Total do vISS difere do somatório do vProd dos itens sujeitos ao ISSQN');
606:ShowMessage('606: Rejeição: Total do vBC do ISS difere do somatório dos itens');
607:ShowMessage('607: Rejeição: Total do ISS difere do somatório dos itens');
608:ShowMessage('608: Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ISSQN');
609:ShowMessage('609: Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ISSQN');
610:ShowMessage('610: Rejeição: Total da NFC-e difere do somatório dos Valores compõe o valor Total da NFC-e.');
611:ShowMessage('611: Rejeição: cEAN inválido');
612:ShowMessage('612: Rejeição: cEANTrib inválido');
613:ShowMessage('613: Rejeição: Chave de Acesso difere da existente em BD');
614:ShowMessage('614: Rejeição: Chave de Acesso inválida (Código UF inválido)');
615:ShowMessage('615: Rejeição: Chave de Acesso inválida (Ano < 05 ou Ano maior que Ano corrente)');
616:ShowMessage('616: Rejeição: Chave de Acesso inválida (Mês < 1 ou Mês > 12)');
617:ShowMessage('617: Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido)');
618:ShowMessage('618: Rejeição: Chave de Acesso inválida (modelo diferente de 55)');
619:ShowMessage('619: Rejeição: Chave de Acesso inválida (número NFC-e = 0)');
620:ShowMessage('620: Rejeição: Chave de Acesso difere da existente em BD');
621:ShowMessage('621: Rejeição: CPF Emitente não cadastrado');
622:ShowMessage('622: Rejeição: IE emitente não vinculada ao CPF');
623:ShowMessage('623: Rejeição: CPF Destinatário não cadastrado');
624:ShowMessage('624: Rejeição: IE Destinatário não vinculada ao CPF');
625:ShowMessage('625: Rejeição: Inscrição SUFRAMA deve ser informada na venda com isenção para ZFM');
626:ShowMessage('626: Rejeição: O CFOP de operação isenta para ZFM deve ser 6109 ou 6110');
627:ShowMessage('627: Rejeição: O valor do ICMS desonerado deve ser informado');
628:ShowMessage('628: Rejeição: Total da NFC-e superior ao valor limite estabelecido pela SEFAZ [Limite]');
629:ShowMessage('629: Rejeição: Valor do Produto difere do produto Valor Unitário de Comercialização e Quantidade Comercial');
630:ShowMessage('630: Rejeição: Valor do Produto difere do produto Valor Unitário de Tributação e Quantidade Tributável');
635:ShowMessage('635: Rejeição: NFC-e com mesmo número e série já transmitida e aguardando processamento');
301:ShowMessage('301: Uso Denegado: Irregularidade fiscal do emitente');
302:ShowMessage('302: Uso Denegado: Irregularidade fiscal do destinatário');
999:ShowMessage('999: Rejeição: Erro não catalogado (informar a mensagem de erro capturado no tratamento da exceção)');
end;
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

end;
procedure TForm_Principal.StatusUltimaNFCeClick(Sender: TObject);
Var
Ret:integer;
Status : string;
iConta : integer;

begin
for iConta := 1 to 7 do Status := Status + ' ';
iRetorno := Bematech_FI_StatusUltimaNFCe(Status);
Memo1.Lines.Add('Status da última NFC-e:');
Ret:=strToInt(Status);
case Ret of
100:Memo1.Lines.Add('100: Autorizado o uso da NFC-e');
101:Memo1.Lines.Add('101: Cancelamento de NFC-e homologado');
102:Memo1.Lines.Add('102: Inutilização de número homologado');
103:Memo1.Lines.Add('103: Lote recebido com sucesso');
104:Memo1.Lines.Add('104: Lote processado');
105:Memo1.Lines.Add('105: Lote em processamento');
106:Memo1.Lines.Add('106: Lote não localizado');
107:Memo1.Lines.Add('107: Serviço em Operação');
108:Memo1.Lines.Add('108: Serviço Paralisado Momentaneamente (curto prazo)');
109:Memo1.Lines.Add('109: Serviço Paralisado sem Previsão');
110:Memo1.Lines.Add('110: Uso Denegado');
111:Memo1.Lines.Add('111: Consulta cadastro com uma ocorrência');
112:Memo1.Lines.Add('112: Consulta cadastro com mais de uma ocorrência');
128:Memo1.Lines.Add('128: Lote de Evento Processado');
135:Memo1.Lines.Add('135: Evento registrado e vinculado a NFC-e');
136:Memo1.Lines.Add('136: Evento registrado, mas não vinculado a NFC-e');
201:Memo1.Lines.Add('201: O numero máximo de numeração de NFC-e a inutilizar ultrapassou o limite');
202:Memo1.Lines.Add('202: Falha no reconhecimento da autoria ou integridade do arquivo digital');
203:Memo1.Lines.Add('203: Emissor não habilitado para emissão da NFC-e');
204:Memo1.Lines.Add('204: Duplicidade de NFC-e [nRec:999999999999999]');
205:Memo1.Lines.Add('205: NFC-e está denegada na base de dados da SEFAZ [nRec:999999999999999]');
206:Memo1.Lines.Add('206: NFC-e já está inutilizada na Base de dados da SEFAZ');
207:Memo1.Lines.Add('207: CNPJ do emitente inválido');
208:Memo1.Lines.Add('208: Rejeição: CNPJ do destinatário inválido');
209:Memo1.Lines.Add('209: Rejeição: IE do emitente inválida');
210:Memo1.Lines.Add('210: Rejeição: IE do destinatário inválida');
211:Memo1.Lines.Add('211: Rejeição: IE do substituto inválida');
212:Memo1.Lines.Add('212: Rejeição: Data de emissão NFC-e posterior a data de recebimento');
213:Memo1.Lines.Add('213: Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital');
214:Memo1.Lines.Add('214: Rejeição: Tamanho da mensagem excedeu o limite estabelecido');
215:Memo1.Lines.Add('215: Rejeição: Falha no schema XML');
216:Memo1.Lines.Add('216: Rejeição: Chave de Acesso difere da cadastrada');
217:Memo1.Lines.Add('217: Rejeição: NFC-e não consta na base de dados da SEFAZ');
218:Memo1.Lines.Add('218: NFC-e já está cancelada na base de dados da SEFAZ [nRec:999999999999999]');
219:Memo1.Lines.Add('219: Rejeição: Circulação da NFC-e verificada');
220:Memo1.Lines.Add('220: Rejeição: Prazo de Cancelamento superior ao previsto na Legislação');
221:Memo1.Lines.Add('221: Rejeição: Confirmado o recebimento da NFC-e pelo destinatário');
222:Memo1.Lines.Add('222: Rejeição: Protocolo de Autorização de Uso difere do cadastrado');
223:Memo1.Lines.Add('223: Rejeição: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta');
224:Memo1.Lines.Add('224: Rejeição: A faixa inicial é maior que a faixa final');
225:Memo1.Lines.Add('225: Rejeição: Falha no Schema XML do lote de NFC-e');
226:Memo1.Lines.Add('226: Rejeição: Código da UF do Emitente diverge da UF autorizadora');
227:Memo1.Lines.Add('227: Rejeição: Erro na Chave de Acesso - Campo Id – falta a literal NFC-e');
228:Memo1.Lines.Add('228: Rejeição: Data de Emissão muito atrasada');
229:Memo1.Lines.Add('229: Rejeição: IE do emitente não informada');
230:Memo1.Lines.Add('230: Rejeição: IE do emitente não cadastrada');
231:Memo1.Lines.Add('231: Rejeição: IE do emitente não vinculada ao CNPJ');
232:Memo1.Lines.Add('232: Rejeição: IE do destinatário não informada');
233:Memo1.Lines.Add('233: Rejeição: IE do destinatário não cadastrada');
234:Memo1.Lines.Add('234: Rejeição: IE do destinatário não vinculada ao CNPJ');
235:Memo1.Lines.Add('235: Rejeição: Inscrição SUFRAMA inválida');
236:Memo1.Lines.Add('236: Rejeição: Chave de Acesso com dígito verificador inválido');
237:Memo1.Lines.Add('237: Rejeição: CPF do destinatário inválido');
238:Memo1.Lines.Add('238: Rejeição: Cabeçalho - Versão do arquivo XML superior a Versão vigente');
239:Memo1.Lines.Add('239: Rejeição: Cabeçalho - Versão do arquivo XML não suportada');
240:Memo1.Lines.Add('240: Rejeição: Cancelamento/Inutilização - Irregularidade Fiscal do Emitente');
241:Memo1.Lines.Add('241: Rejeição: Um número da faixa já foi utilizado');
242:Memo1.Lines.Add('242: Rejeição: Cabeçalho - Falha no Schema XML');
243:Memo1.Lines.Add('243: Rejeição: XML Mal Formado');
244:Memo1.Lines.Add('244: Rejeição: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente');
245:Memo1.Lines.Add('245: Rejeição: CNPJ Emitente não cadastrado');
246:Memo1.Lines.Add('246: Rejeição: CNPJ Destinatário não cadastrado');
247:Memo1.Lines.Add('247: Rejeição: Sigla da UF do Emitente diverge da UF autorizadora');
248:Memo1.Lines.Add('248: Rejeição: UF do Recibo diverge da UF autorizadora');
249:Memo1.Lines.Add('249: Rejeição: UF da Chave de Acesso diverge da UF autorizadora');
250:Memo1.Lines.Add('250: Rejeição: UF diverge da UF autorizadora');
251:Memo1.Lines.Add('251: Rejeição: UF/Município destinatário não pertence a SUFRAMA');
252:Memo1.Lines.Add('252: Rejeição: Ambiente informado diverge do Ambiente de recebimento');
253:Memo1.Lines.Add('253: Rejeição: Digito Verificador da chave de acesso composta inválida');
254:Memo1.Lines.Add('254: Rejeição: NFC-e complementar não possui NFC-e referenciada');
255:Memo1.Lines.Add('255: Rejeição: NFC-e complementar possui mais de uma NF referenciada');
256:Memo1.Lines.Add('256: Rejeição: Uma NFC-e da faixa já está inutilizada na Base de dados da SEFAZ');
257:Memo1.Lines.Add('257: Rejeição: Solicitante não habilitado para emissão da NFC-e');
258:Memo1.Lines.Add('258: Rejeição: CNPJ da consulta inválido');
259:Memo1.Lines.Add('259: Rejeição: CNPJ da consulta não cadastrado como contribuinte na UF');
260:Memo1.Lines.Add('260: Rejeição: IE da consulta inválida');
261:Memo1.Lines.Add('261: Rejeição: IE da consulta não cadastrada como contribuinte na UF');
262:Memo1.Lines.Add('262: Rejeição: UF não fornece consulta por CPF');
263:Memo1.Lines.Add('263: Rejeição: CPF da consulta inválido');
264:Memo1.Lines.Add('264: Rejeição: CPF da consulta não cadastrado como contribuinte na UF');
265:Memo1.Lines.Add('265: Rejeição: Sigla da UF da consulta difere da UF do Web Service');
266:Memo1.Lines.Add('266: Rejeição: Série utilizada não permitida no Web Service');
267:Memo1.Lines.Add('267: Rejeição: NFC-e Complementar referencia uma NFC-e inexistente');
268:Memo1.Lines.Add('268: Rejeição: NFC-e Complementar referencia uma outra NFC-e Complementar');
269:Memo1.Lines.Add('269: Rejeição: CNPJ Emitente da NFC-e Complementar difere do CNPJ da NFC-e Referenciada');
270:Memo1.Lines.Add('270: Rejeição: Código Município do Fato Gerador: dígito inválido');
271:Memo1.Lines.Add('271: Rejeição: Código Município do Fato Gerador: difere da UF do emitente');
272:Memo1.Lines.Add('272: Rejeição: Código Município do Emitente: dígito inválido');
273:Memo1.Lines.Add('273: Rejeição: Código Município do Emitente: difere da UF do emitente');
274:Memo1.Lines.Add('274: Rejeição: Código Município do Destinatário: dígito inválido');
275:Memo1.Lines.Add('275: Rejeição: Código Município do Destinatário: difere da UF do Destinatário');
276:Memo1.Lines.Add('276: Rejeição: Código Município do Local de Retirada: dígito inválido');
277:Memo1.Lines.Add('277: Rejeição: Código Município do Local de Retirada: difere da UF do Local de Retirada');
278:Memo1.Lines.Add('278: Rejeição: Código Município do Local de Entrega: dígito inválido');
279:Memo1.Lines.Add('279: Rejeição: Código Município do Local de Entrega: difere da UF do Local de Entrega');
280:Memo1.Lines.Add('280: Rejeição: Certificado Transmissor inválido');
281:Memo1.Lines.Add('281: Rejeição: Certificado Transmissor Data Validade');
282:Memo1.Lines.Add('282: Rejeição: Certificado Transmissor sem CNPJ');
283:Memo1.Lines.Add('283: Rejeição: Certificado Transmissor - erro Cadeia de Certificação');
284:Memo1.Lines.Add('284: Rejeição: Certificado Transmissor revogado');
285:Memo1.Lines.Add('285: Rejeição: Certificado Transmissor difere ICP-Brasil');
286:Memo1.Lines.Add('286: Rejeição: Certificado Transmissor erro no acesso a LCR');
287:Memo1.Lines.Add('287: Rejeição: Código Município do FG - ISSQN: dígito inválido');
288:Memo1.Lines.Add('288: Rejeição: Código Município do FG - Transporte: dígito inválido');
289:Memo1.Lines.Add('289: Rejeição: Código da UF informada diverge da UF solicitada');
290:Memo1.Lines.Add('290: Rejeição: Certificado Assinatura inválido');
291:Memo1.Lines.Add('291: Rejeição: Certificado Assinatura Data Validade');
292:Memo1.Lines.Add('292: Rejeição: Certificado Assinatura sem CNPJ');
293:Memo1.Lines.Add('293: Rejeição: Certificado Assinatura - erro Cadeia de Certificação');
294:Memo1.Lines.Add('294: Rejeição: Certificado Assinatura revogado');
295:Memo1.Lines.Add('295: Rejeição: Certificado Assinatura difere ICP-Brasil');
296:Memo1.Lines.Add('296: Rejeição: Certificado Assinatura erro no acesso a LCR');
297:Memo1.Lines.Add('297: Rejeição: Assinatura difere do calculado');
298:Memo1.Lines.Add('298: Rejeição: Assinatura difere do padrão do Sistema');
299:Memo1.Lines.Add('299: Rejeição: XML da área de cabeçalho com codificação diferente de UTF-8');
401:Memo1.Lines.Add('401: Rejeição: CPF do remetente inválido');
402:Memo1.Lines.Add('402: Rejeição: XML da área de dados com codificação diferente de UTF-8');
403:Memo1.Lines.Add('403: Rejeição: O grupo de informações da NFC-e avulsa é de uso exclusivo do Fisco');
404:Memo1.Lines.Add('404: Rejeição: Uso de prefixo de namespace não permitido');
405:Memo1.Lines.Add('405: Rejeição: Código do país do emitente: dígito inválido');
406:Memo1.Lines.Add('406: Rejeição: Código do país do destinatário: dígito inválido');
407:Memo1.Lines.Add('407: Rejeição: O CPF só pode ser informado no campo emitente para a NFC-e avulsa');
409:Memo1.Lines.Add('409: Rejeição: Campo cUF inexistente no elemento NFC-eCabecMsg do SOAP Header');
410:Memo1.Lines.Add('410: Rejeição: UF informada no campo cUF não é atendida pelo Web Service');
411:Memo1.Lines.Add('411: Rejeição: Campo versaoDados inexistente no elemento NFC-eCabecMsg do SOAP Header');
420:Memo1.Lines.Add('420: Rejeição: Cancelamento para NFC-e já cancelada');
450:Memo1.Lines.Add('450: Rejeição: Modelo da NFC-e diferente de 55');
451:Memo1.Lines.Add('451: Rejeição: Processo de emissão informado inválido');
452:Memo1.Lines.Add('452: Rejeição: Tipo Autorizador do Recibo diverge do Órgão Autorizador');
453:Memo1.Lines.Add('453: Rejeição: Ano de inutilização não pode ser superior ao Ano atual');
454:Memo1.Lines.Add('454: Rejeição: Ano de inutilização não pode ser iNFC-erior a 2006');
478:Memo1.Lines.Add('478: Rejeição: Local da entrega não informado para faturamento direto de veículos novos');
489:Memo1.Lines.Add('489: Rejeição: CNPJ informado inválido (DV ou zeros)');
490:Memo1.Lines.Add('490: Rejeição: CPF informado inválido (DV ou zeros)');
491:Memo1.Lines.Add('491: Rejeição: O tpEvento informado inválido');
492:Memo1.Lines.Add('492: Rejeição: O verEvento informado inválido');
493:Memo1.Lines.Add('493: Rejeição: Evento não atende o Schema XML específico');
494:Memo1.Lines.Add('494: Rejeição: Chave de Acesso inexistente');
502:Memo1.Lines.Add('502: Rejeição: Erro na Chave de Acesso - Campo Id não corresponde à concatenação dos campos correspondentes');
503:Memo1.Lines.Add('503: Rejeição: Série utilizada fora da faixa permitida no SCAN (900-999)');
504:Memo1.Lines.Add('504: Rejeição: Data de Entrada/Saída posterior ao permitido');
505:Memo1.Lines.Add('505: Rejeição: Data de Entrada/Saída anterior ao permitido');
506:Memo1.Lines.Add('506: Rejeição: Data de Saída menor que a Data de Emissão');
507:Memo1.Lines.Add('507: Rejeição: O CNPJ do destinatário/remetente não deve ser informado em operação com o exterior');
508:Memo1.Lines.Add('508: Rejeição: O CNPJ com conteúdo nulo só é válido em operação com exterior');
509:Memo1.Lines.Add('509: Rejeição: Informado código de município diferente de “9999999” para operação com o exterior');
510:Memo1.Lines.Add('510: Rejeição: Operação com Exterior e Código País destinatário é 1058 (Brasil) ou não informado');
511:Memo1.Lines.Add('511: Rejeição: Não é de Operação com Exterior e Código País destinatário difere de 1058 (Brasil)');
512:Memo1.Lines.Add('512: Rejeição: CNPJ do Local de Retirada inválido');
513:Memo1.Lines.Add('513: Rejeição: Código Município do Local de Retirada deve ser 9999999 para UF retirada = EX');
514:Memo1.Lines.Add('514: Rejeição: CNPJ do Local de Entrega inválido');
515:Memo1.Lines.Add('515: Rejeição: Código Município do Local de Entrega deve ser 9999999 para UF entrega = EX');
516:Memo1.Lines.Add('516: Rejeição: Falha no schema XML – inexiste a tag raiz esperada para a mensagem');
517:Memo1.Lines.Add('517: Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz da mensagem');
518:Memo1.Lines.Add('518: Rejeição: CFOP de entrada para NFC-e de saída');
519:Memo1.Lines.Add('519: Rejeição: CFOP de saída para NFC-e de entrada');
520:Memo1.Lines.Add('520: Rejeição: CFOP de Operação com Exterior e UF destinatário difere de EX');
521:Memo1.Lines.Add('521: Rejeição: CFOP de Operação Estadual e UF do emitente difere da UF do destinatário para destinatário contribuinte do ICMS.');
522:Memo1.Lines.Add('522: Rejeição: CFOP de Operação Estadual e UF emitente difere da UF remetente para remetente contribuinte do ICMS.');
523:Memo1.Lines.Add('523: Rejeição: CFOP não é de Operação Estadual e UF emitente igual a UFdestinatário.');
524:Memo1.Lines.Add('524: Rejeição: CFOP de Operação com Exterior e não informado NCM');
525:Memo1.Lines.Add('525: Rejeição: CFOP de Importação e não informado dados da DI');
526:Memo1.Lines.Add('526: Rejeição: CFOP de Exportação e não informado Local de Embarque');
527:Memo1.Lines.Add('527: Rejeição: Operação de Exportação com informação de ICMS incompatível');
528:Memo1.Lines.Add('528: Rejeição: Valor do ICMS difere do produto BC e Alíquota');
529:Memo1.Lines.Add('529: Rejeição: NCM de informação obrigatória para produto tributado pelo IPI');
530:Memo1.Lines.Add('530: Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal');
531:Memo1.Lines.Add('531: Rejeição: Total da BC ICMS difere do somatório dos itens');
532:Memo1.Lines.Add('532: Rejeição: Total do ICMS difere do somatório dos itens');
533:Memo1.Lines.Add('533: Rejeição: Total da BC ICMS-ST difere do somatório dos itens');
534:Memo1.Lines.Add('534: Rejeição: Total do ICMS-ST difere do somatório dos itens');
535:Memo1.Lines.Add('535: Rejeição: Total do Frete difere do somatório dos itens');
536:Memo1.Lines.Add('536: Rejeição: Total do Seguro difere do somatório dos itens');
537:Memo1.Lines.Add('537: Rejeição: Total do Desconto difere do somatório dos itens');
538:Memo1.Lines.Add('538: Rejeição: Total do IPI difere do somatório dos itens');
539:Memo1.Lines.Add('539: Duplicidade de NFC-e com diferença na Chave de Acesso [chNFC-e: 99999999999999999999999999999999999999999999][nRec:999999999999999]');
540:Memo1.Lines.Add('540: Rejeição: CPF do Local de Retirada inválido');
541:Memo1.Lines.Add('541: Rejeição: CPF do Local de Entrega inválido');
542:Memo1.Lines.Add('542: Rejeição: CNPJ do Transportador inválido');
543:Memo1.Lines.Add('543: Rejeição: CPF do Transportador inválido');
544:Memo1.Lines.Add('544: Rejeição: IE do Transportador inválida');
545:Memo1.Lines.Add('545: Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão da mensagem');
546:Memo1.Lines.Add('546: Rejeição: Erro na Chave de Acesso – Campo Id – falta a literal NFC-e');
547:Memo1.Lines.Add('547: Rejeição: Dígito Verificador da Chave de Acesso da NFC-e Referenciada inválido');
548:Memo1.Lines.Add('548: Rejeição: CNPJ da NF referenciada inválido.');
549:Memo1.Lines.Add('549: Rejeição: CNPJ da NFC-e referenciada de produtor inválido.');
550:Memo1.Lines.Add('550: Rejeição: CPF da NFC-e referenciada de produtor inválido.');
551:Memo1.Lines.Add('551: Rejeição: IE da NFC-e referenciada de produtor inválido.');
552:Memo1.Lines.Add('552: Rejeição: Dígito Verificador da Chave de Acesso do CT-e Referenciado inválido');
553:Memo1.Lines.Add('553: Rejeição: Tipo autorizador do recibo diverge do Órgão Autorizador.');
554:Memo1.Lines.Add('554: Rejeição: Série difere da faixa 0-899');
555:Memo1.Lines.Add('555: Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador.');
556:Memo1.Lines.Add('556: Rejeição: Justificativa de entrada em contingência não deve ser informada para tipo de emissão normal.');
557:Memo1.Lines.Add('557: Rejeição: A Justificativa de entrada em contingência deve ser informada.');
558:Memo1.Lines.Add('558: Rejeição: Data de entrada em contingência posterior a data de recebimento.');
559:Memo1.Lines.Add('559: Rejeição: UF do Transportador não informada');
560:Memo1.Lines.Add('560: Rejeição: CNPJ base do emitente difere do CNPJ base da primeira NFC-e do lote recebido');
561:Memo1.Lines.Add('561: Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NFC-e');
562:Memo1.Lines.Add('562: Rejeição: Código Numérico informado na Chave de Acesso difere do Código Numérico da NFC-e [chNFC-e:99999999999999999999999999999999999999999999]');
563:Memo1.Lines.Add('563: Rejeição: Já existe pedido de Inutilização com a mesma faixa de inutilização');
564:Memo1.Lines.Add('564: Rejeição: Total do Produto / Serviço difere do somatório dos itens');
565:Memo1.Lines.Add('565: Rejeição: Falha no schema XML – inexiste a tag raiz esperada para o lote de NFC-e');
567:Memo1.Lines.Add('567: Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão do lote de NFC-e');
568:Memo1.Lines.Add('568: Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz do lote de NFC-e');
569:Memo1.Lines.Add('569: Rejeição: Data de entrada em contingência muito atrasada');
570:Memo1.Lines.Add('570: Rejeição: tpEmis = 3 só é válido na contingência SCAN');
571:Memo1.Lines.Add('571: Rejeição: O tpEmis informado diferente de 3 para contingência SCAN');
572:Memo1.Lines.Add('572: Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFC-e + nSeqEvento)');
573:Memo1.Lines.Add('573: Rejeição: Duplicidade de Evento');
574:Memo1.Lines.Add('574: Rejeição: O autor do evento diverge do emissor da NFC-e');
575:Memo1.Lines.Add('575: Rejeição: O autor do evento diverge do destinatário da NFC-e');
576:Memo1.Lines.Add('576: Rejeição: O autor do evento não é um órgão autorizado a gerar o evento');
577:Memo1.Lines.Add('577: Rejeição: A data do evento não pode ser menor que a data de emissão da NFC-e');
578:Memo1.Lines.Add('578: Rejeição: A data do evento não pode ser maior que a data do processamento');
579:Memo1.Lines.Add('579: Rejeição: A data do evento não pode ser menor que a data de autorização para NFC-e não emitida em contingência');
580:Memo1.Lines.Add('580: Rejeição: O evento exige uma NFC-e autorizada');
587:Memo1.Lines.Add('587: Rejeição: Usar somente o namespace padrão da NFC-e');
588:Memo1.Lines.Add('588: Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem');
590:Memo1.Lines.Add('590: Rejeição: Informado CST para emissor do Simples Nacional (CRT=1)');
591:Memo1.Lines.Add('591: Rejeição: Informado CSOSN para emissor que não é do Simples Nacional (CRT diferente de 1)');
592:Memo1.Lines.Add('592: Rejeição: A NFC-e deve ter pelo menos um item de produto sujeito ao ICMS');
594:Memo1.Lines.Add('594: Rejeição: O número de sequencia do evento informado é maior que o permitido');
595:Memo1.Lines.Add('595: Rejeição: A versão do leiaute da NFC-e utilizada não é mais válida');
596:Memo1.Lines.Add('596: Rejeição: Ambiente de homologação indisponível para recepção de NFC-e da versão 1.10.');
597:Memo1.Lines.Add('597: Rejeição: CFOP de Importação e não informado dados de IPI');
598:Memo1.Lines.Add('598: Rejeição: NFC-e emitida em ambiente de homologação com Razão Social do destinatário diferente de NFC-e EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL');
599:Memo1.Lines.Add('599: Rejeição: CFOP de Importação e não informado dados de II');
601:Memo1.Lines.Add('601: Rejeição: Total do II difere do somatório dos itens');
602:Memo1.Lines.Add('602: Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ICMS');
603:Memo1.Lines.Add('603: Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ICMS');
604:Memo1.Lines.Add('604: Rejeição: Total do vOutro difere do somatório dos itens');
605:Memo1.Lines.Add('605: Rejeição: Total do vISS difere do somatório do vProd dos itens sujeitos ao ISSQN');
606:Memo1.Lines.Add('606: Rejeição: Total do vBC do ISS difere do somatório dos itens');
607:Memo1.Lines.Add('607: Rejeição: Total do ISS difere do somatório dos itens');
608:Memo1.Lines.Add('608: Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ISSQN');
609:Memo1.Lines.Add('609: Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ISSQN');
610:Memo1.Lines.Add('610: Rejeição: Total da NFC-e difere do somatório dos Valores compõe o valor Total da NFC-e.');
611:Memo1.Lines.Add('611: Rejeição: cEAN inválido');
612:Memo1.Lines.Add('612: Rejeição: cEANTrib inválido');
613:Memo1.Lines.Add('613: Rejeição: Chave de Acesso difere da existente em BD');
614:Memo1.Lines.Add('614: Rejeição: Chave de Acesso inválida (Código UF inválido)');
615:Memo1.Lines.Add('615: Rejeição: Chave de Acesso inválida (Ano < 05 ou Ano maior que Ano corrente)');
616:Memo1.Lines.Add('616: Rejeição: Chave de Acesso inválida (Mês < 1 ou Mês > 12)');
617:Memo1.Lines.Add('617: Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido)');
618:Memo1.Lines.Add('618: Rejeição: Chave de Acesso inválida (modelo diferente de 55)');
619:Memo1.Lines.Add('619: Rejeição: Chave de Acesso inválida (número NFC-e = 0)');
620:Memo1.Lines.Add('620: Rejeição: Chave de Acesso difere da existente em BD');
621:Memo1.Lines.Add('621: Rejeição: CPF Emitente não cadastrado');
622:Memo1.Lines.Add('622: Rejeição: IE emitente não vinculada ao CPF');
623:Memo1.Lines.Add('623: Rejeição: CPF Destinatário não cadastrado');
624:Memo1.Lines.Add('624: Rejeição: IE Destinatário não vinculada ao CPF');
625:Memo1.Lines.Add('625: Rejeição: Inscrição SUFRAMA deve ser informada na venda com isenção para ZFM');
626:Memo1.Lines.Add('626: Rejeição: O CFOP de operação isenta para ZFM deve ser 6109 ou 6110');
627:Memo1.Lines.Add('627: Rejeição: O valor do ICMS desonerado deve ser informado');
628:Memo1.Lines.Add('628: Rejeição: Total da NFC-e superior ao valor limite estabelecido pela SEFAZ [Limite]');
629:Memo1.Lines.Add('629: Rejeição: Valor do Produto difere do produto Valor Unitário de Comercialização e Quantidade Comercial');
630:Memo1.Lines.Add('630: Rejeição: Valor do Produto difere do produto Valor Unitário de Tributação e Quantidade Tributável');
635:Memo1.Lines.Add('635: Rejeição: NFC-e com mesmo número e série já transmitida e aguardando processamento');
301:Memo1.Lines.Add('301: Uso Denegado: Irregularidade fiscal do emitente');
302:Memo1.Lines.Add('302: Uso Denegado: Irregularidade fiscal do destinatário');
999:Memo1.Lines.Add('999: Rejeição: Erro não catalogado (informar a mensagem de erro capturado no tratamento da exceção)');
else
Memo1.Lines.Add('Alerta! Ocorrência não contida nos retornos da SEFAZ');
end;
Memo1.Lines.Add('----------------------------------------------------------');
Memo2.Clear;
Memo2.Lines.Add('StatusUltimaNFCe: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno StatusUltimaNFCe: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
end;

procedure TForm_Principal.StatusUltimoCancelamentoNFCeClick(Sender: TObject);
var
cStatus : string;
iConta  : integer;
Ret:integer;

begin

for iConta := 1 to 5 do cStatus := cStatus + ' ';//destinado a receber o status, 5 caracteres.
iRetorno := Bematech_FI_StatusUltimoCancelamentoNFCe(cStatus);

Ret:=strToInt(cStatus);

Memo1.Lines.Add('Status do último cancelamento: ');
case Ret of
100:Memo1.Lines.Add('Autorizado o uso da NFC-e');
101:Memo1.Lines.Add('Cancelamento de NF-e homologado');
102:Memo1.Lines.Add('Inutilização de número homologado');
103:Memo1.Lines.Add('Lote recebido com sucesso');
104:Memo1.Lines.Add('Lote processado');
105:Memo1.Lines.Add('Lote em processamento');
106:Memo1.Lines.Add('Lote não localizado');
107:Memo1.Lines.Add('Serviço em Operação');
108:Memo1.Lines.Add('Serviço Paralisado Momentaneamente (curto prazo)');
109:Memo1.Lines.Add('Serviço Paralisado sem Previsão');
110:Memo1.Lines.Add('Uso Denegado');
111:Memo1.Lines.Add('Consulta cadastro com uma ocorrência');
112:Memo1.Lines.Add('Consulta cadastro com mais de uma ocorrência');
113:Memo1.Lines.Add('SCAN será desabilitado para a UF às hh:mm');
114:Memo1.Lines.Add('SCAN desabilitado pela SEFAZ Origem');
128:Memo1.Lines.Add('Lote de Evento Processado');
135:Memo1.Lines.Add('Evento registrado e vinculado a NF-e');
136:Memo1.Lines.Add('Evento registrado, mas não vinculado a NF-e');
137:Memo1.Lines.Add('Nenhum documento localizado para o Destinatário');
138:Memo1.Lines.Add('Documento localizado para o Destinatário');
139:Memo1.Lines.Add('Pedido de Download processado');
140:Memo1.Lines.Add('Download disponibilizado');
150:Memo1.Lines.Add('Autorizado o uso da NF-e');
151:Memo1.Lines.Add('Cancelamento de NF-e homologado fora de prazo');
155:Memo1.Lines.Add('Cancelamento de NF-e homologado fora de prazo');
201:Memo1.Lines.Add('Rejeição: O numero máximo de numeração de NF-e a inutilizar ultrapassou o limite');
202:Memo1.Lines.Add('Rejeição: Falha no reconhecimento da autoria ou integridade do arquivo digital');
203:Memo1.Lines.Add('Rejeição: Emissor não habilitado para emissão da NF-e');
204:Memo1.Lines.Add('Rejeição: Duplicidade de NF-e');
205:Memo1.Lines.Add('Rejeição: NF-e está denegada na base de dados da SEFAZ');
206:Memo1.Lines.Add('Rejeição: NF-e já está inutilizada na Base de dados da SEFAZ');
207:Memo1.Lines.Add('Rejeição: CNPJ do emitente inválido');
208:Memo1.Lines.Add('Rejeição: CNPJ do destinatário inválido');
209:Memo1.Lines.Add('Rejeição: IE do emitente inválida');
210:Memo1.Lines.Add('Rejeição: IE do destinatário inválida');
211:Memo1.Lines.Add('Rejeição: IE do substituto inválida');
212:Memo1.Lines.Add('Rejeição: Data de emissão NF-e posterior a data de recebimento');
213:Memo1.Lines.Add('Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital');
214:Memo1.Lines.Add('Rejeição: Tamanho da mensagem excedeu o limite estabelecido');
215:Memo1.Lines.Add('Rejeição: Falha no schema XML');
216:Memo1.Lines.Add('Rejeição: Chave de Acesso difere da cadastrada');
217:Memo1.Lines.Add('Rejeição: NF-e não consta na base de dados da SEFAZ');
218:Memo1.Lines.Add('Rejeição: NF-e já esta cancelada na base de dados da SEFAZ');
219:Memo1.Lines.Add('Rejeição: Circulação da NF-e verificada');
220:Memo1.Lines.Add('Rejeição: Prazo de Cancelamento Superior ao Previsto na Legislação');
221:Memo1.Lines.Add('Rejeição: Confirmado o recebimento da NF-e pelo destinatário');
222:Memo1.Lines.Add('Rejeição: Protocolo de Autorização de Uso difere do cadastrado');
223:Memo1.Lines.Add('Rejeição: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta');
224:Memo1.Lines.Add('Rejeição: A faixa inicial é maior que a faixa final');
225:Memo1.Lines.Add('Rejeição: Falha no Schema XML da NFe');
226:Memo1.Lines.Add('Rejeição: Código da UF do Emitente diverge da UF autorizadora');
227:Memo1.Lines.Add('Rejeição: Erro na Chave de Acesso - Campo ID');
228:Memo1.Lines.Add('Rejeição: Data de Emissão muito atrasada');
229:Memo1.Lines.Add('Rejeição: IE do emitente não informada');
230:Memo1.Lines.Add('Rejeição: IE do emitente não cadastrada');
231:Memo1.Lines.Add('Rejeição: IE do emitente não vinculada ao CNPJ');
232:Memo1.Lines.Add('Rejeição: IE do destinatário não informada');
233:Memo1.Lines.Add('Rejeição: IE do destinatário não cadastrada');
234:Memo1.Lines.Add('Rejeição: IE do destinatário não vinculada ao CNPJ');
235:Memo1.Lines.Add('Rejeição: Inscrição SUFRAMA inválida');
236:Memo1.Lines.Add('Rejeição: Chave de Acesso com dígito verificador inválido');
237:Memo1.Lines.Add('Rejeição: CPF do destinatário inválido');
238:Memo1.Lines.Add('Rejeição: Cabeçalho - Versão do arquivo XML superior a Versão vigente');
239:Memo1.Lines.Add('Rejeição: Cabeçalho - Versão do arquivo XML não suportada');
240:Memo1.Lines.Add('Rejeição: Cancelamento/Inutilização - Irregularidade Fiscal do Emitente');
241:Memo1.Lines.Add('Rejeição: Um número da faixa já foi utilizado');
242:Memo1.Lines.Add('Rejeição: Cabeçalho - Falha no Schema XML');
243:Memo1.Lines.Add('Rejeição: XML Mal Formado');
244:Memo1.Lines.Add('Rejeição: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente');
245:Memo1.Lines.Add('Rejeição: CNPJ Emitente não cadastrado');
246:Memo1.Lines.Add('Rejeição: CNPJ Destinatário não cadastrado');
247:Memo1.Lines.Add('Rejeição: Sigla da UF do Emitente diverge da UF autorizadora');
248:Memo1.Lines.Add('Rejeição: UF do Recibo diverge da UF autorizadora');
249:Memo1.Lines.Add('Rejeição: UF da Chave de Acesso diverge da UF autorizadora');
250:Memo1.Lines.Add('Rejeição: UF diverge da UF autorizadora');
251:Memo1.Lines.Add('Rejeição: UF/Município destinatário não pertence a SUFRAMA');
252:Memo1.Lines.Add('Rejeição: Ambiente informado diverge do Ambiente de recebimento');
253:Memo1.Lines.Add('Rejeição: Digito Verificador da chave de acesso composta inválida');
254:Memo1.Lines.Add('Rejeição: NF-e complementar não possui NF referenciada');
255:Memo1.Lines.Add('Rejeição: NF-e complementar possui mais de uma NF referenciada');
256:Memo1.Lines.Add('Rejeição: Uma NF-e da faixa já está inutilizada na Base de dados da SEFAZ');
257:Memo1.Lines.Add('Rejeição: Solicitante não habilitado para emissão da NF-e');
258:Memo1.Lines.Add('Rejeição: CNPJ da consulta inválido');
259:Memo1.Lines.Add('Rejeição: CNPJ da consulta não cadastrado como contribuinte na UF');
260:Memo1.Lines.Add('Rejeição: IE da consulta inválida');
261:Memo1.Lines.Add('Rejeição: IE da consulta não cadastrada como contribuinte na UF');
262:Memo1.Lines.Add('Rejeição: UF não fornece consulta por CPF');
263:Memo1.Lines.Add('Rejeição: CPF da consulta inválido');
264:Memo1.Lines.Add('Rejeição: CPF da consulta não cadastrado como contribuinte na UF');
265:Memo1.Lines.Add('Rejeição: Sigla da UF da consulta difere da UF do Web Service');
266:Memo1.Lines.Add('Rejeição: Série utilizada fora da faixa permitida no SCAN (0-889)');
267:Memo1.Lines.Add('Rejeição: Chave de Acesso referenciada inexistente');
268:Memo1.Lines.Add('Rejeição: NF Complementar referencia uma outra NF-e Complementar');
269:Memo1.Lines.Add('Rejeição: CNPJ Emitente da NF Complementar difere do CNPJ da NF Referenciada');
270:Memo1.Lines.Add('Rejeição: Código Município do Fato Gerador: dígito inválido');
271:Memo1.Lines.Add('Rejeição: Código Município do Fato Gerador: difere da UF do emitente');
272:Memo1.Lines.Add('Rejeição: Código Município do Emitente: dígito inválido');
273:Memo1.Lines.Add('Rejeição: Código Município do Emitente: difere da UF do emitente');
274:Memo1.Lines.Add('Rejeição: Código Município do Destinatário: dígito inválido');
275:Memo1.Lines.Add('Rejeição: Código Município do Destinatário: difere da UF do Destinatário');
276:Memo1.Lines.Add('Rejeição: Código Município do Local de Retirada: dígito inválido');
277:Memo1.Lines.Add('Rejeição: Código Município do Local de Retirada: difere da UF do Local de Retirada');
278:Memo1.Lines.Add('Rejeição: Código Município do Local de Entrega: dígito inválido');
279:Memo1.Lines.Add('Rejeição: Código Município do Local de Entrega: difere da UF do Local de Entrega');
280:Memo1.Lines.Add('Rejeição: Certificado Transmissor inválido');
281:Memo1.Lines.Add('Rejeição: Certificado Transmissor Data Validade');
282:Memo1.Lines.Add('Rejeição: Certificado Transmissor sem CNPJ');
283:Memo1.Lines.Add('Rejeição: Certificado Transmissor - erro Cadeia de Certificação');
284:Memo1.Lines.Add('Rejeição: Certificado Transmissor revogado');
285:Memo1.Lines.Add('Rejeição: Certificado Transmissor difere ICP-Brasil');
286:Memo1.Lines.Add('Rejeição: Certificado Transmissor erro no acesso a LCR');
287:Memo1.Lines.Add('Rejeição: Código Município do FG - ISSQN: dígito inválido');
288:Memo1.Lines.Add('Rejeição: Código Município do FG - Transporte: dígito inválido');
289:Memo1.Lines.Add('Rejeição: Código da UF informada diverge da UF solicitada');
290:Memo1.Lines.Add('Rejeição: Certificado Assinatura inválido');
291:Memo1.Lines.Add('Rejeição: Certificado Assinatura Data Validade');
292:Memo1.Lines.Add('Rejeição: Certificado Assinatura sem CNPJ');
293:Memo1.Lines.Add('Rejeição: Certificado Assinatura - erro Cadeia de Certificação');
294:Memo1.Lines.Add('Rejeição: Certificado Assinatura revogado');
295:Memo1.Lines.Add('Rejeição: Certificado Assinatura difere ICP-Brasil');
296:Memo1.Lines.Add('Rejeição: Certificado Assinatura erro no acesso a LCR');
297:Memo1.Lines.Add('Rejeição: Assinatura difere do calculado');
298:Memo1.Lines.Add('Rejeição: Assinatura difere do padrão do Projeto');
299:Memo1.Lines.Add('Rejeição: XML da área de cabeçalho com codificação diferente de UTF-8');
301:Memo1.Lines.Add('Uso Denegado : Irregularidade fiscal do emitente');
302:Memo1.Lines.Add('Uso Denegado : Irregularidade fiscal do destinatário');
303:Memo1.Lines.Add('Uso Denegado : Destinatário não habilitado a operar na UF');
304:Memo1.Lines.Add('Rejeição: Pedido de Cancelamento para NF-e com evento da Suframa');
321:Memo1.Lines.Add('Rejeição: NF-e de devolução não possui conhecimento fiscal referenciado');
322:Memo1.Lines.Add('Rejeição: NF-e de devolução com mais de um documento fiscal referenciado');
323:Memo1.Lines.Add('Rejeição: CNPJ autorizado para download inválido');
324:Memo1.Lines.Add('Rejeição: CNPJ do destinatário ja autorizado para download');
325:Memo1.Lines.Add('Rejeição: CPF autorizado para download inválido');
326:Memo1.Lines.Add('Rejeição: CPF do destinatário autorizado para download');
327:Memo1.Lines.Add('Rejeição: CFOP inválido para NF-e com finalidade de devolução');
328:Memo1.Lines.Add('Rejeição: CFOP inválido para NF-e que não tem finalidade de devolução');
329:Memo1.Lines.Add('Rejeição: Número da DI/DSI inválido');
330:Memo1.Lines.Add('Rejeição: Informar o valor da AFRMM na importação por via marítima');
331:Memo1.Lines.Add('Rejeição: Informar o CNPJ do adquirente ou do encomendante nesta forma de importação');
332:Memo1.Lines.Add('Rejeição: CNPJ do adquirente ou do encomendante da importação inválido');
333:Memo1.Lines.Add('Rejeição: Informar a UF do adquirente ou do encomendante nesta forma de importação');
334:Memo1.Lines.Add('Rejeição: Número do processo de drawback não informado na importação');
335:Memo1.Lines.Add('Rejeição: Número do processo de drawback na importação inválido');
336:Memo1.Lines.Add('Rejeição: Informado o grupo de exportação no item para CFOP que não é de exportação');
337:Memo1.Lines.Add('Rejeição: Não informado o grupo de exportação no item');
338:Memo1.Lines.Add('Rejeição: Número de processo de drawback não informado na exportação');
339:Memo1.Lines.Add('Rejeição: Número de processo de drawback na exportação inválido');
340:Memo1.Lines.Add('Rejeição: Não informado o grupo de exportação indireta no item');
341:Memo1.Lines.Add('Rejeição: Número do registro de exportação inválido');
342:Memo1.Lines.Add('Rejeição: Chave de acesso informada na exportação indireta com DV inválido');
343:Memo1.Lines.Add('Rejeição: Modelo da NF-e informada na exportação indireta diferente de 55');
344:Memo1.Lines.Add('Rejeição: Duplicidade de NF-e informada na exportação indireta (chave acesso informada mais de uma vez)');
345:Memo1.Lines.Add('Rejeição: Chave de acesso informada na exportação indireta não consta como NF-e referenciada');
346:Memo1.Lines.Add('Rejeição: Somatório quantidades informadas na exportação indireta não corresponde total do item');
347:Memo1.Lines.Add('Rejeição: Descrição do combustível diverge da descrição adotada pela ANP');
348:Memo1.Lines.Add('Rejeição: NFC-e com grupo RECOPI');
349:Memo1.Lines.Add('Rejeição: Número RECOPI não informado');
350:Memo1.Lines.Add('Rejeição: Número RECOPI inválido');
351:Memo1.Lines.Add('Rejeição: Valor do ICMS da operação no ICMS-ST=51 difere do produto BC e alíquota');
352:Memo1.Lines.Add('Rejeição: Valor do ICMS diferido no CST=51 difere do produto Valor ICMS operação e ICMS diferido');
353:Memo1.Lines.Add('Rejeição: Valor do ICMS no CST=51 não corresponde a diferença do ICMS operação e ICMS diferido');
354:Memo1.Lines.Add('Rejeição: Informado grupo de devoluçãode tributos para NF-e e que não tem finalidade de devolução');
355:Memo1.Lines.Add('Rejeição: Informar o local de saída do país no caso de exportação');
356:Memo1.Lines.Add('Rejeição: Informar o clocal de saída do pís somente no caso de exportação');
357:Memo1.Lines.Add('Rejeição: Chave de acesso do grupo de exportação indireta inexistente');
358:Memo1.Lines.Add('Rejeição: Chave de acesso no grupo de exportação indireta cancelada ou denegada');
359:Memo1.Lines.Add('Rejeição: NF-e de venda a Órgão público sem informar a Nota de Empenho');
360:Memo1.Lines.Add('Rejeição: NF-e com Nota de Empenho inválida para UF');
361:Memo1.Lines.Add('Rejeição: NF-e com Nota de Empenho inexistente na UF');
362:Memo1.Lines.Add('Rejeição: Venda de combustível sem informação do Transportador');
363:Memo1.Lines.Add('Rejeição: Total do ISS difere do somatório dos itens');
364:Memo1.Lines.Add('Rejeição: Total do valor da dedução do ISS difere do somatório dos itens');
365:Memo1.Lines.Add('Rejeição: Total de outras retenções difere do somatório dos itens');
366:Memo1.Lines.Add('Rejeição: Total do desconto incondicionado do ISS difere do somatório dos itens');
367:Memo1.Lines.Add('Rejeição: Total do desconto condicionado do ISS difere do somatório dos itens');
368:Memo1.Lines.Add('Rejeição: Total do ISS retido difere do somatório dos itens');
369:Memo1.Lines.Add('Rejeição: Não informado o grupo avulsa na emissão pelo Fisco');
370:Memo1.Lines.Add('Rejeição: Nota Fiscal Avusa com tipo de emissão inválido');
401:Memo1.Lines.Add('Rejeição: CPF do remetente inválido');
402:Memo1.Lines.Add('Rejeição: XML da área de dados com codificação diferente de UTF-8');
403:Memo1.Lines.Add('Rejeição: O grupo de informações da NF-e avulsa é de uso exclusivo do Fisco');
404:Memo1.Lines.Add('Rejeição: Uso de prefixo de namespace não permitido');
405:Memo1.Lines.Add('Rejeição: Código do país do emitente: dígito inválido');
406:Memo1.Lines.Add('Rejeição: Código do país do destinatário: dígito inválido');
407:Memo1.Lines.Add('Rejeição: O CPF só pode ser informado no campo emitente para a NF-e avulsa');
409:Memo1.Lines.Add('Rejeição: Campo cUF inexistente no elemento nfeCabecMsg do SOAP Header');
410:Memo1.Lines.Add('Rejeição: UF informada no campo cUF não é atendida pelo Web Service');
411:Memo1.Lines.Add('Rejeição: Campo versaoDados inexistente no elemento nfeCabecMsg do SOAP Header');
417:Memo1.Lines.Add('Rejeição: Total do ICMS superior ao valor limite estabelecido');
418:Memo1.Lines.Add('Rejeição: Total do ICMS-ST superior ao limite estabelecido');
420:Memo1.Lines.Add('Rejeição: Cancelamento para NF-e já cancelada');
450:Memo1.Lines.Add('Rejeição: Modelo da NF-e diferente de 55');
451:Memo1.Lines.Add('Rejeição: Processo de emissão informado inválido');
452:Memo1.Lines.Add('Rejeição: Tipo Autorizador do Recibo diverge do Órgão Autorizador');
453:Memo1.Lines.Add('Rejeição: Ano de inutilização não pode ser superior ao Ano atual');
454:Memo1.Lines.Add('Rejeição: Ano de inutilização não pode ser inferior a 2006');
461:Memo1.Lines.Add('Rejeição: Informado percentual de gás natural na mistura para produto diferente de GLP');
465:Memo1.Lines.Add('Rejeição: Número de controle da FCI inexistente');
478:Memo1.Lines.Add('Rejeição: Local da entrega não informado para faturamto direto de veículos novos');
479:Memo1.Lines.Add('Rejeição: Emissor em situação irregular peranto o fisco');
480:Memo1.Lines.Add('Rejeição: CNPJ da Chave de acesso da NF-e informada diverge do CNPJ do emitente');
481:Memo1.Lines.Add('Rejeição: UF da Chave de acesso diverge do código da UF informada');
482:Memo1.Lines.Add('Rejeição: AA da Chave de acesso inválida');
483:Memo1.Lines.Add('Rejeição: MM da Chave de acesso inválido');
484:Memo1.Lines.Add('Rejeição: DPEC com tipo de emissão diferente de "4"(posição 35 da Chave de Acess');
485:Memo1.Lines.Add('Rejeição: Número DPEC já existe no cadastro de DPEC');
486:Memo1.Lines.Add('Rejeição: DPEC não localizada para o número de registro de DPEC informado');
487:Memo1.Lines.Add('Rejeição: Nenhuma DPEC localizada para a chave de acesso informada');
488:Memo1.Lines.Add('Rejeição: Requisitante de Consulta não tem o mesmo CNPJ base do emissor da DPEC');
489:Memo1.Lines.Add('Rejeição: CNPJ informado inválido (DV ou zeros)');
490:Memo1.Lines.Add('Rejeição: CPF informado inválido (DV ou zeros');
492:Memo1.Lines.Add('Rejeição: O verEvento informado inválido');
493:Memo1.Lines.Add('Rejeição: Evento não atende o Schema XML específico');
494:Memo1.Lines.Add('Rejeição: Chave de Acesso inexistente');
501:Memo1.Lines.Add('Rejeição: Verificar NFe autorizada há mais de 30 dias (720) horas');
502:Memo1.Lines.Add('Rejeição: Erro Chave Acesso - Campo Id ñ corresponde à conct. dos campos corresp');
503:Memo1.Lines.Add('Rejeição: Série utilizada fora da faixa permitida no SCAN(900-999)');
504:Memo1.Lines.Add('Rejeição: Data de Entrada/Saída posterior ao permitido');
505:Memo1.Lines.Add('Rejeição: Data de Entrada/Saída anterior ao permitido');
506:Memo1.Lines.Add('Rejeição: Data de Saída menor que a Data de Emissão');
507:Memo1.Lines.Add('Rejeição: CNPJ destinatário/remetente ñ deve ser inform. em operação c/ exterior');
508:Memo1.Lines.Add('Rejeição: CNPJ com conteúdo nulo só é válido em operação com exterior');
509:Memo1.Lines.Add('Rejeição: Inform. cód.município diferente de "9999999" para operação c/ exterior');
510:Memo1.Lines.Add('Rejeição: Oper.c/ Exterior e Cód.País destinatário é 1058(Brasil) ou ñ informado');
511:Memo1.Lines.Add('Rejeição: Não é Oper.c/ Exterior e Cód.País destinatário difere de 1058 (Brasil)');
512:Memo1.Lines.Add('Rejeição: CNPJ do Local de retirada inválido');
513:Memo1.Lines.Add('Rejeição: Código Município Local Retirada deve ser 9999999 para UF retirada = EX');
514:Memo1.Lines.Add('Rejeição: CNPJ do Local de Entrega inválido');
515:Memo1.Lines.Add('Rejeição: Código Munic. do Local de Entrega deve ser 9999999 p/ UF entrega=EX');
516:Memo1.Lines.Add('Rejeição: Falha no schema XML - inexiste a tag raiz esperada para a mensagem');
517:Memo1.Lines.Add('Rejeição: Falha no schema XML - inexiste atributo versao na tag raiz da mensagem');
518:Memo1.Lines.Add('Rejeição: CFOP de entrada para NF-e de saída');
519:Memo1.Lines.Add('Rejeição: CFOP de saída para NF-e de entrada');
520:Memo1.Lines.Add('Rejeição: CFOP de Operação com Exterior e UF destinatário difere de EX');
521:Memo1.Lines.Add('Rejeição: CFOP não é de Operação com Exterior e UF destinatário é EX');
522:Memo1.Lines.Add('Rejeição: CFOP de operação estadual e UF emitente <> da UF remetente contribuinte ICMS');
523:Memo1.Lines.Add('Rejeição: CFOP não é de Operação Estadual e UF emitente igual a UF destinatário');
524:Memo1.Lines.Add('Rejeição: CFOP de Operação com Exterior e não informado NCM');
525:Memo1.Lines.Add('Rejeição: CFOP de Importação e não informado dados da DI');
526:Memo1.Lines.Add('Rejeição: CFOP de Exportação e não informado Local de Embarque');
527:Memo1.Lines.Add('Rejeição: Operação de Exportação com informação de ICMS incompatível');
528:Memo1.Lines.Add('Rejeição: Valor do ICMS difere do produto BC e Alíquota');
529:Memo1.Lines.Add('Rejeição: NCM de informação obrigatória para produto tributado pelo IPI');
530:Memo1.Lines.Add('Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal');
531:Memo1.Lines.Add('Rejeição: Total da BC ICMS difere do somatório dos itens');
532:Memo1.Lines.Add('Rejeição: Total do ICMS difere do somatório dos itens');
533:Memo1.Lines.Add('Rejeição: Total da BC ICMS-ST difere do somatório dos itens');
534:Memo1.Lines.Add('Rejeição: Total do ICMS-ST difere do somatório dos itens');
535:Memo1.Lines.Add('Rejeição: Total do Frete difere do somatório dos itens');
536:Memo1.Lines.Add('Rejeição: Total do Seguro difere do somatório dos itens');
537:Memo1.Lines.Add('Rejeição: Total do Desconto difere do somatório dos itens');
538:Memo1.Lines.Add('Rejeição: Total do IPI difere do somatório dos itens');
539:Memo1.Lines.Add('Rejeição: Duplicidade de NF-e, com diferença na Chave de Acesso');
540:Memo1.Lines.Add('Rejeição: CPF do Local de Retirada inválido');
541:Memo1.Lines.Add('Rejeição: CPF do Local de Entrega inválido');
542:Memo1.Lines.Add('Rejeição: CNPJ do Transportador inválido');
543:Memo1.Lines.Add('Rejeição: CPF do Transportador inválido');
544:Memo1.Lines.Add('Rejeição: IE do Transportador inválida');
545:Memo1.Lines.Add('Rejeição: Falha schema XML - versão inform.na Dados do SOAPHeader difere da msg');
546:Memo1.Lines.Add('Rejeição: Erro na Chave de Acesso - Campo Id - falta a literal NFe');
547:Memo1.Lines.Add('Rejeição: Dígito Verificador da Chave de Acesso da NF-e Referenciada inválido');
548:Memo1.Lines.Add('Rejeição: CNPJ da NF referenciada inválido.');
549:Memo1.Lines.Add('Rejeição: CNPJ da NF referenciada de produtor inválido.');
550:Memo1.Lines.Add('Rejeição: CPF da NF referenciada de produtor inválido.');
551:Memo1.Lines.Add('Rejeição: IE da NF referenciada de produtor inválido.');
552:Memo1.Lines.Add('Rejeição: Dígito Verificador da Chave de Acesso do CT-e Referenciado inválido');
553:Memo1.Lines.Add('Rejeição: Tipo autorizador do recibo diverge do Órgão Autorizador');
554:Memo1.Lines.Add('Rejeição: Série difere da faixa 0-899');
555:Memo1.Lines.Add('Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador');
556:Memo1.Lines.Add('Rejeição: Justific.de entrada em conting.não deve ser informada p/tp.emis.normal');
557:Memo1.Lines.Add('Rejeição: A Justificativa de entrada em contingência deve ser informada');
558:Memo1.Lines.Add('Rejeição: Data de entrada em contingência posterior a data de emissão');
559:Memo1.Lines.Add('Rejeição: UF do Transportador não informada');
560:Memo1.Lines.Add('Rejeição: CNPJ base do emitente <> CNPJ base da primeira NF-e do lote recebido');
561:Memo1.Lines.Add('Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NFCe');
562:Memo1.Lines.Add('Rejeição: Código Numérico informado da Chave de Acesso <> Código Numérico da NFe');
563:Memo1.Lines.Add('Rejeição: Já existe pedido de Inutilização com a mesma faixa de inutilização');
564:Memo1.Lines.Add('Rejeição: Total do Produto / Serviço difere do somatório dos itens');
565:Memo1.Lines.Add('Rejeição: Falha no schema XML - inexiste a tag raiz esperada para o lote de NF-e');
567:Memo1.Lines.Add('Rejeição: Falha schema XML - versão inform.na Dados do SOAPHeader difere do lote');
568:Memo1.Lines.Add('Rejeição: Falha schema XML inexiste atributo versão na tag raiz do lote de NF-e');
569:Memo1.Lines.Add('Rejeição: Data de entrada em contingência muito atrasada');
570:Memo1.Lines.Add('Rejeição: Tipo de emissão 3, 6 e 7 só é valido nas contingêncis SCAN/SVC');
571:Memo1.Lines.Add('Rejeição:  O tpEmis informado diferente de 3 para contingência SCAN');
572:Memo1.Lines.Add('Rejeição: Erro Atributo ID do evento erro concatenação dos campos (“ID” + tpEvento + chNFe + nSeq)');
573:Memo1.Lines.Add('Rejeição: Duplicidade de Evento');
574:Memo1.Lines.Add('Rejeição: O autor do evento diverge do emissor da NF-e');
575:Memo1.Lines.Add('Rejeição: O autor do evento diverge do destinatário da NF-e');
576:Memo1.Lines.Add('Rejeição: O autor do evento não é um órgão autorizado a gerar o evento');
577:Memo1.Lines.Add('Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e');
578:Memo1.Lines.Add('Rejeição: A data do evento não pode ser maior que a data do processamento');
579:Memo1.Lines.Add('Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência');
580:Memo1.Lines.Add('Rejeição: O evento exige uma NF-e autorizada');
587:Memo1.Lines.Add('Rejeição: Usar somente o namespace padrão da NF-e');
588:Memo1.Lines.Add('Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem');
589:Memo1.Lines.Add('Rejeição: Número do NSU informado superior ao maior NSU da base de dados da SEFAZ');
590:Memo1.Lines.Add('Rejeição: Informado CST para emissor do Simples Nacional');
591:Memo1.Lines.Add('Rejeição: Informado CSOSN para emissor que não é do Simples Nacional (CRT diferente de 1)');
592:Memo1.Lines.Add('Rejeição: A NF-e deve ter pelo menos um item de produto sujeito ao ICMS');
593:Memo1.Lines.Add('Rejeição: CNPJ-Base consultado difere do CNPJ-Base do Certificado Digital');
594:Memo1.Lines.Add('Rejeição: O número de sequencia do evento informado é maior que o permitido');
595:Memo1.Lines.Add('Rejeição: Rejeição: A versão do leiaute da NF-e utilizada não é mais válida');
596:Memo1.Lines.Add('Rejeição: Rejeição: Ambiente de homologação indisponível para recepção de NF-e da versão 1.10.');
597:Memo1.Lines.Add('Rejeição: CFOP de Importação e não informado dados de IPI');
598:Memo1.Lines.Add('Rejeição: NF-e emitida em ambiente de homologação com razão social <> de NF-e (Emitida homologação - S/vlr fiscal)');
599:Memo1.Lines.Add('Rejeição: CFOP de Importação e não informado dados de II');
601:Memo1.Lines.Add('Rejeição: Total do II difere do somatório dos itens');
602:Memo1.Lines.Add('Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ICMS');
603:Memo1.Lines.Add('Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ICMS');
604:Memo1.Lines.Add('Rejeição: Total do vOutro difere do somatório dos itens');
605:Memo1.Lines.Add('Rejeição: Total do vServ difere do somatório do vProd dos itens sujeitos ao ISSQN');
606:Memo1.Lines.Add('Rejeição: Total do vBC do ISS difere do somatório dos itens');
607:Memo1.Lines.Add('Rejeição: Total do ISS difere do somatório dos itens');
608:Memo1.Lines.Add('Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ISSQN');
609:Memo1.Lines.Add('Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ISSQN');
610:Memo1.Lines.Add('Rejeição: Total da NF difere do somatório dos Valores compõe o valor Total da NF');
611:Memo1.Lines.Add('Rejeição: cEAN inválido');
612:Memo1.Lines.Add('Rejeição: cEANTrib inválido');
613:Memo1.Lines.Add('Rejeição: Chave de Acesso difere da existente em BD');
614:Memo1.Lines.Add('Rejeição: Chave de Acesso inválida (Código UF inválido)');
615:Memo1.Lines.Add('Rejeição: Chave de Acesso inválida (Ano < 05 ou Ano maior que Ano corrente)');
616:Memo1.Lines.Add('Rejeição: Chave de Acesso inválida (Mês < 1 ou Mês > 12)');
617:Memo1.Lines.Add('Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido)');
618:Memo1.Lines.Add('Rejeição: Chave de Acesso inválida (modelo diferente de 55 e 65 )');
619:Memo1.Lines.Add('Rejeição: Chave de Acesso inválida (número NF = 0)');
620:Memo1.Lines.Add('Rejeição: Chave de Acesso difere da existente em BD');
621:Memo1.Lines.Add('Rejeição: CPF Emitente não cadastrado');
622:Memo1.Lines.Add('Rejeição: IE emitente não vinculada ao CPF');
623:Memo1.Lines.Add('Rejeição: CPF Destinatário não cadastrado');
624:Memo1.Lines.Add('Rejeição: IE Destinatário não vinculada ao CPF');
625:Memo1.Lines.Add('Rejeição: Inscrição SUFRAMA deve ser informada na venda com isenção para ZFM');
626:Memo1.Lines.Add('Rejeição: O CFOP de operação isenta para ZFM diferente do previsto');
627:Memo1.Lines.Add('Rejeição: O valor do ICMS desonerado deve ser informado');
628:Memo1.Lines.Add('Rejeição: Total da NF superior ao valor limite estabelecido pela SEFAZ [Limite]');
629:Memo1.Lines.Add('Rejeição: Vlr Produto difere do produto Valor Unitário de Comercialização e quantidade comercial');
630:Memo1.Lines.Add('Rejeição: Vlr Produto difere do produto Valor Unitário de Tributação e quantidade tributável');
631:Memo1.Lines.Add('Rejeição: CNPJ-Base do Destinatário difere do CNPJ-Base do Certificado Digital');
632:Memo1.Lines.Add('Rejeição: Solicitação fora de prazo, a NF-e não está mais disponível para download');
633:Memo1.Lines.Add('Rejeição: NF-e indisponível para download devido a ausência de Manifestação do Destinatário');
634:Memo1.Lines.Add('Rejeição: Destinatário da NF-e não tem o mesmo CNPJ raiz do solicitante do download');
635:Memo1.Lines.Add('Rejeição: NF-e com mesmo número e série já transmitida e aguardando processamento');
650:Memo1.Lines.Add('Rejeição: Evento de "Ciência da Operação" para NF-e Cancelada ou Denegada');
651:Memo1.Lines.Add('Rejeição: Evento de "Desconhecimento da Operação" para NF-e Cancelada ou Denegada');
653:Memo1.Lines.Add('Rejeição: NF-e Cancelada, arquivo indisponível para download');
654:Memo1.Lines.Add('Rejeição: NF-e Denegada, arquivo indisponível para download');
655:Memo1.Lines.Add('Rejeição: Evento de Ciência da Operação informado após a manifestação final do destinatário');
656:Memo1.Lines.Add('Rejeição: Consumo indevido');
657:Memo1.Lines.Add('Rejeição: Código do Órgão diverge do órgão autorizador');
658:Memo1.Lines.Add('Rejeição: UF do destinatário da Chave de Acesso diverge da UF autorizadora');
660:Memo1.Lines.Add('Rejeição: CFOP de Combustível e não informado grupo de combustível da NF-e');
661:Memo1.Lines.Add('Rejeição: NF-e já existente para o número da DPEC informada');
662:Memo1.Lines.Add('Rejeição: Numeração da DPEC está inutilizada na Base de Dados da SEFAZ');
663:Memo1.Lines.Add('Rejeição: Alíq. ICMS maior que 4% na saída interestadual com produtos importados');
678:Memo1.Lines.Add('Rejeição: NF referenciada com UF diferente da UF da NF-e complementar');
679:Memo1.Lines.Add('Rejeição: Modelo da NF-e referenciada diferente de 55');
680:Memo1.Lines.Add('Rejeição: Duplicidade de NF-e referenciada (chave de acesso ref mais de uma vez)');
681:Memo1.Lines.Add('Rejeição: Duplicidade de NF Modelo 1 referenciada (CNPJ, Modelo Série e Número)');
682:Memo1.Lines.Add('Rejeição: Duplicidade de NF de produtor referenciada (IE, Modelo, Série e Número)');
683:Memo1.Lines.Add('Rejeição: Modelo do CT-e referenciado diferente de 57');
684:Memo1.Lines.Add('Rejeição: Duplicidade de Cupom Fiscal referenciado (Modelo, Número e Ordem e COO)');
685:Memo1.Lines.Add('Rejeição: Total do valor aproximado dos tributos difere do somatório dos itens');
686:Memo1.Lines.Add('Rejeição: NF complementar referencia uma NF-e cancelada');
687:Memo1.Lines.Add('Rejeição: NF complementar referencia uma NF-e denegada');
688:Memo1.Lines.Add('Rejeição: NF referenciada de produtor com IE inexistente (nREF: xxx)');
689:Memo1.Lines.Add('Rejeição: NF referenciada de produtor com IE não vinculada ao CNPJ/CPF informado (nREF: xxx)');
690:Memo1.Lines.Add('Rejeição: Pedido de cancelamento para NF-e com CT-e ou MDF-e');
701:Memo1.Lines.Add('Rejeição: NF-e não pode utilizar verão 3.00');
702:Memo1.Lines.Add('Rejeição: NFC-e não é aceita pela UF do Emitente');
703:Memo1.Lines.Add('Rejeição: Data-hora de emissão posterior ao horário de recebimento');
704:Memo1.Lines.Add('Rejeição: NFC-e com data-hora de emissão atrasada');
705:Memo1.Lines.Add('Rejeição: NFC-e com data de entrada/saida');
706:Memo1.Lines.Add('Rejeição: NFC-e para operação de entrada');
707:Memo1.Lines.Add('Rejeição: NFC-e para operação interestadual ou com o exterior');
708:Memo1.Lines.Add('Rejeição: NFC-e nao pode referenciar um documento fiscal');
709:Memo1.Lines.Add('Rejeição: NFC-e com formato de DANFE inválido');
710:Memo1.Lines.Add('Rejeição: NF-e com formado de DANFE inválido');
711:Memo1.Lines.Add('Rejeição: NF-e com contingência off-line');
712:Memo1.Lines.Add('Rejeição: NFC-e com contingência off-line para a UF');
713:Memo1.Lines.Add('Rejeição: Tipo de emissão diferente de 6 ou 7 para contingência da SVC acessada');
714:Memo1.Lines.Add('Rejeição: NFC-e com contingência DPEC inexistente');
715:Memo1.Lines.Add('Rejeição: NFC-e com finalidade inválida');
716:Memo1.Lines.Add('Rejeição: NFC-e em operaçoã não destinada a consumidor final');
717:Memo1.Lines.Add('Rejeição: NFC-e em operação não presencial');
718:Memo1.Lines.Add('Rejeição: NFC-e não deve informar IE de substituto tributário');
719:Memo1.Lines.Add('Rejeição: NF-e sem identificação do destinatário');
720:Memo1.Lines.Add('Rejeição: Na operação com exterior deve ser informada tag id Estrangeiro');
721:Memo1.Lines.Add('Rejieção: Operação interestadual deve informar CNPJ ou CPF');
722:Memo1.Lines.Add('Rejeição: Operação interna com idEstrangeiro informado deve ser presencial');
723:Memo1.Lines.Add('Rejeição: Operação interna com idEstrangeiro informado deve ser para consumidor final');
724:Memo1.Lines.Add('Rejeição: NF-e sem o nome do destinatário');
725:Memo1.Lines.Add('Rejeição: NFC-e com CFOP inválido');
726:Memo1.Lines.Add('Rejeição: NF-e sem a informação de endereço do destinatário');
727:Memo1.Lines.Add('Rejeição: Operação com exterior e UF diferente de EX');
728:Memo1.Lines.Add('Rejeição: NF-e sem informação da IE do destinatário');
729:Memo1.Lines.Add('Rejeição: NFC-e sem informação da IE do destinatário');
730:Memo1.Lines.Add('Rejeição: NFC-e com inscrição SUFRAMA');
731:Memo1.Lines.Add('Rejeição: CFOP de operação com exterior idDest <> 3');
732:Memo1.Lines.Add('Rejeição: CFOP de operação com interestadual e idDest <> 2');
733:Memo1.Lines.Add('Rejeição: CFOP de operação interna e idDest <> 1');
734:Memo1.Lines.Add('Rejeição: NFC-e com unidade de comercialização inválida');
735:Memo1.Lines.Add('Rejeição: NFC-e com unidade de tributação inválida');
736:Memo1.Lines.Add('Rejeição: NFC-e com grupo de veículos novos');
737:Memo1.Lines.Add('Rejeição: NFC-e com grupo de medicamentos');
738:Memo1.Lines.Add('Rejeição: NFC-e com grupo de armamentos');
739:Memo1.Lines.Add('Rejeição: NFC-e com grupo de combustíveis');
740:Memo1.Lines.Add('Rejeição: NFC-e com CST 51 - diferimento');
741:Memo1.Lines.Add('Rejeição: NFC-e com partilha de CIMS entre UF');
742:Memo1.Lines.Add('Rejeição: NFC-e com grupo do IPI');
743:Memo1.Lines.Add('Rejeição: NFC-e com grupo do II');
745:Memo1.Lines.Add('Rejeição: NF-e sem grupo do PIS');
746:Memo1.Lines.Add('Rejeição: NFC-e com grupo do PIS-ST');
748:Memo1.Lines.Add('Rejeição: NF-e sem grupo do COFINS');
749:Memo1.Lines.Add('Rejeição: NF-e sem grupo do COFINS-ST');
750:Memo1.Lines.Add('Rejeição: NFC-e com valor total superior ao permitido para destinatário não identificado (código)');
751:Memo1.Lines.Add('Rejeição: NFC-e com valor total superior ao permitido para destinatário não identificado (nome)');
752:Memo1.Lines.Add('Rejeição: NFC-e com valor total superior ao permitido para destinatário não identificado (endereço)');
753:Memo1.Lines.Add('Rejeição: NFC-e sem frete');
754:Memo1.Lines.Add('Rejeição: NFC-e com dados do transportador');
755:Memo1.Lines.Add('Rejeição: NFC-e com dados de retenção do ICMS no transporte');
756:Memo1.Lines.Add('Rejeição: NFC-e com dados do veículo de transporte');
757:Memo1.Lines.Add('Rejeição: NFC-e com dados de reboque do veículo de transporte');
758:Memo1.Lines.Add('Rejeição: NFC-e com dados do vagão de transporte');
759:Memo1.Lines.Add('Rejeição: NFC-e co dados da balsa de transporte');
760:Memo1.Lines.Add('Rejeição: NFC-e com dados de cobrança (fatura, duplicata)');
762:Memo1.Lines.Add('Rejeição: NFC-e com dados de compra (empenho, pedido, contrato)');
763:Memo1.Lines.Add('Rejeição: NFC-e com dados de aquisiçãod e cana');
765:Memo1.Lines.Add('Rejeição: Lote só poderá conter NF-e ou NFC-e');
766:Memo1.Lines.Add('Rejeição: NFC-e com CST 50-suspenção');
767:Memo1.Lines.Add('Rejeição: NFC-e com somatório dos pagamentos diferente do total da Nota Fiscal');
768:Memo1.Lines.Add('Rejeição: NF-e não deve possuir o grupo de formas de pagamento');
769:Memo1.Lines.Add('Rejeição: NFC-e deve possuir o grupo de formas de pagamento');
771:Memo1.Lines.Add('Rejeição: Operação interestadual e UF de destino com EX');
772:Memo1.Lines.Add('Rejeição: Operação interestadual e UF de destino igual à UF do emitente');
773:Memo1.Lines.Add('Rejeição: Operação interna e UF de destino difere da UF do emitente');
774:Memo1.Lines.Add('Rejeição: NFC-e com indicador de item não participante do total');
775:Memo1.Lines.Add('Rejeição: Modelo da NFC-e diferente de 65');
777:Memo1.Lines.Add('Rejeição: NFC-e deve informar NCM completo');
778:Memo1.Lines.Add('Rejeição: Informado NCM inexistente');
779:Memo1.Lines.Add('Rejeição:NFC-e com NCM incompatível');
780:Memo1.Lines.Add('Rejeição: Total da NFC-e superior ao valor limite estabelecido pela SEFAZ');
781:Memo1.Lines.Add('Rejeição: Emissor não habilitado para emissão de NFC-e');
782:Memo1.Lines.Add('Rejeição: NFC-e não é autorizada pelo SCAN');
783:Memo1.Lines.Add('Rejeição: NFC-e não é autorizada pelo SVC');
784:Memo1.Lines.Add('Rejeição: NF-e com indicativo de NFC-e com entrega a domicilio');
785:Memo1.Lines.Add('Rejeição: NFC-e com entrega a domicilio não permitida pela UF');
786:Memo1.Lines.Add('Rejeiçao: NFC-e de entrega a domicilio sem dados dos transportador');
787:Memo1.Lines.Add('Rejeição: NFC-e de entrega a domicilio sem a identificação do destinatário');
788:Memo1.Lines.Add('Rejeição: NFC-e de entrega a domicílio sem o endereço do destinatário');
789:Memo1.Lines.Add('Rejeição: NFC-e para destinatário contribuinte de ICMS');
790:Memo1.Lines.Add('Rejeição: Operação com exterior para destinatário contribuinte do ICMS');
791:Memo1.Lines.Add('Rejeição: NF-e com indicação de destinatário isento de IE, com a informação da IE do destinatario');
792:Memo1.Lines.Add('Rejeição: Informada a IE do destinatário para operação com destinatário do exterior');
793:Memo1.Lines.Add('Rejeição: Informado capítulo do NCM inexistente');
999:Memo1.Lines.Add('Rejeição: Erro não catalogado');
else
Memo1.Lines.Add('Alerta! Ocorrência não contida nos retornos da SEFAZ');
end;
Memo1.Lines.Add('----------------------------------------------------------');
Memo2.Clear;
Memo2.Lines.Add('StatusUltimoCancelamentoNFCe: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno StatusUltimoCancelamentoNFCe: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));

end;

procedure TForm_Principal.ProgramaContadorNFCeClick(Sender: TObject);
var
cIndice, cContador : string;
Indice : string;
begin
cIndice := IntToStr(ComboBox1.ItemIndex); {contador será programado:
                                    0 - COO
                                    1 - CRZ
                                    2 - CRO
                                    3 - CCF}
cContador := '10'; //valor do contador a ser programado.

if cIndice = '0' then
  Indice := 'COO';
if cIndice = '1' then
  Indice := 'CRZ';
if cIndice = '2' then
  Indice := 'CRO';
if cIndice = '3' then
  Indice := 'CCF';

cContador := Edit6.Text;

iRetorno := Bematech_FI_ProgramaContadorNFCe (pchar(cIndice), pchar(cContador));
Memo2.Clear;
Memo2.Lines.Add('ProgramaContadorNFCe: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
if (ST3=0) then
  begin
    Memo1.Lines.Add('Programar Contador Tipo: '+Indice);
    Memo1.Lines.Add('Contador: '+cContador);
    Memo1.Lines.Add('----------------------------------------------------------');
  end
else
  begin
    Memo1.Lines.Add('Problema ao registrar contador!');
  end;
Memo2.Lines.Add('Retorno ProgramaContadorNFCe: ');
    Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
    Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
    Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
    Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
end;

procedure TForm_Principal.VendeItemCustomClick(Sender: TObject);
begin
Form_VIC := TForm_VIC.Create(Application);
Form_VIC.ShowModal;
end;

procedure TForm_Principal.ProgramaAliquotaClick(Sender: TObject);
var
tipo, cValor : string;
iTipo  : integer;

begin
cValor := Edit5.Text;

iTipo :=  RadioGroup5.ItemIndex;
if iTipo = 0 then
  tipo := 'ICMS';
if iTipo = 1 then
  tipo := 'ISS';

iRetornoX:= Bematech_FI_ProgramaAliquota( pchar( cValor ), iTipo );
Memo2.Clear;
Memo2.Lines.Add('ProgramaAliquota: '+IntToStr(iRetornoX));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
if ((ST3 <> 0) or (iRetornoX <= 0)) then
  begin
    Insert(',',cValor,3);
    Memo1.Lines.Add('Problema ao cadastrar a aliquota! Veja o retorno abaixo.');
    Memo1.Lines.Add('----------------------------------------------------------');
    Memo2.Lines.Add('Retorno ProgramaAliquota: ');
    Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
    Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
    Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
    Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
  end
else
  begin
    Insert(',',cValor,3);
    Memo1.Lines.Add('Aliquota: '+cValor+' % ' + ' de '+tipo+' cadastrada!');
    Memo1.Lines.Add('----------------------------------------------------------');
    Memo2.Lines.Add('Retorno ProgramaAliquota: ');
    Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
    Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
    Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
    Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
  end;
end;
procedure TForm_Principal.RetornoAliquotasClick(Sender: TObject);
var
Aliquotas : string;

iConta    : integer;

begin
for iConta := 1 to 80 do Aliquotas := Aliquotas + ' ';
iRetorno := Bematech_FI_RetornoAliquotas( Aliquotas );

if iRetorno = 1 then
  Memo1.Lines.Add('Aliquotas: ');
  Memo1.Lines.Add(Aliquotas);
  Memo1.Lines.Add('----------------------------------------------------------');
Memo2.Clear;
Memo2.Lines.Add('RetornoAliquotas: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno RetornoAliquotas: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
end;

procedure TForm_Principal.Edit5Change(Sender: TObject);

var
  TW: Integer;
begin
  TW := Canvas.TextWidth((Sender as TEdit).Text);
  (Sender as TEdit).Perform(EM_SETMARGINS, EC_LEFTMARGIN, ((Sender as TEdit).Width - TW-15));

end;

procedure TForm_Principal.Edit3Change(Sender: TObject);
var
  TW: Integer;
begin
  TW := Canvas.TextWidth((Sender as TEdit).Text);
  (Sender as TEdit).Perform(EM_SETMARGINS, EC_LEFTMARGIN, ((Sender as TEdit).Width - TW-15));

end;

procedure TForm_Principal.Edit6Change(Sender: TObject);
var
  TW: Integer;
begin
  TW := Canvas.TextWidth((Sender as TEdit).Text);
  (Sender as TEdit).Perform(EM_SETMARGINS, EC_LEFTMARGIN, ((Sender as TEdit).Width - TW-15));

end;



procedure TForm_Principal.Edit4Change(Sender: TObject);
var
  TW: Integer;
begin
  TW := Canvas.TextWidth((Sender as TEdit).Text);
  (Sender as TEdit).Perform(EM_SETMARGINS, EC_LEFTMARGIN, ((Sender as TEdit).Width - TW-15));

end;
procedure TForm_Principal.Button1Click(Sender: TObject);
var
arquivo : TextFile;

begin

AssignFile(arquivo, 'c:\\Retorno.txt');
    //Rewrite(arquivo);

iRetorno := Bematech_FI_LeituraXSerial();
Memo1.Lines.LoadFromFile('c:\\Retorno.txt');
Memo2.Clear;
Memo2.Lines.Add('LeituraXSerial: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno LeituraXSerial: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));
end;

procedure TForm_Principal.Button2Click(Sender: TObject);
var
Pdir : PChar;
begin
Pdir := '';
ShellExecute(0, nil, 'http://partners.bematech.com.br/suporte/bemafi32/h_d_ret_est_logger.htm', nil, Pdir, SW_NORMAL);
end;
procedure TForm_Principal.FormCreate(Sender: TObject);
begin
iRetorno := Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD( '1' );
end;

procedure TForm_Principal.VendeItemCompletoClick(Sender: TObject);
var
Codigo: string;
EAN13: string;
Descricao: string;
IndiceDepartamento: string;
Aliquota: string;
UnidadeMedida: string;
TipoQuantidade: string;
CasasDecimaisQtde: string;
Quantidade: string;
CasasDecimaisValor: string;
ValorUnitario: string;
TipoDesconto: string;
ValorAcrescimo: string;
ValorDesconto: string;
ArredondaTrunca: string;
NCM: string;
CFOP: string;
InformacaoAdicional: string;
CST_ICMS: string;
OrigemProduto: string;
ItemListaServico: string;
CodigoISS: string;
NaturezaOperacaoISS: string;
IndicadorIncentivoFiscal: string;
CodigoIBGE: string;
CSOSN: string;
ValorBaseCalculoSimples: string;
ValorICMSRetidoSimples: string;
ModalidadeBaseCalculo: string;
PercentualReducaoBase: string;
ModalidadeBC: string;
PercentualMargemICMS: string;
PercentualBCICMS: string;
ValorReducaoBCICMS: string;
ValorAliquotaICMS: string;
ValorICMS: string;
ValorICMSDesonerado: string;
MotivoDesoneracaoICMS: string;
AliquotaCalculoCredito: string;
ValorCreditoICMS: string;
ValorTotalTributos :  string;
CSTPIS :  string;
BaseCalculoPIS :  string;
AliquotaPIS : string;
ValorPIS :  string;
QuantVendidaPIS :  string;
ValorAliquotaPIS :  string;
CSTCOFINS :  string;
BaseCalculoCOFINS :  string;
AliquotaCOFINS :  string;
ValorCOFINS :  string;
QunatVendidaCOFINS :  string;
ValorAliquotaCOFINS :  string;
Reservado01 :  string;
Reservado02 :  string;
Reservado03 :  string;
Reservado04 :  string;
Reservado05 :  string;
Reservado06 :  string;
Reservado07 :  string;
Reservado08 :  string;
Reservado09 :  string;
Reservado10 :  string;

begin

  Codigo := '1234567890';
  EAN13 := '';
  Descricao := 'AGUA MINERAL SEM GAS - COPO 200 ML';
  IndiceDepartamento := '00';
  Aliquota := 'F1';
  UnidadeMedida := 'UN';
  TipoQuantidade := 'I';
  CasasDecimaisQtde := '3';
  Quantidade := '1000';
  CasasDecimaisValor := '2';
  ValorUnitario := '1,00';
  TipoDesconto := '$';
  ValorAcrescimo := '0,00';
  ValorDesconto := '0,00';
  ArredondaTrunca := 'A';
  NCM := '22011000';
  CFOP := '5403';
  InformacaoAdicional := 'INFORMAÇÕES';
  OrigemProduto := '0';
  CST_ICMS := '60';
  CodigoIBGE := '';
  CodigoISS := '';
  NaturezaOperacaoISS := '';
  IndicadorIncentivoFiscal := '';
  ItemListaServico := '1234';
  //CSOSN := '102'; //--> Simples Nacional
  CSOSN := '';
  ValorBaseCalculoSimples := '0';
  ValorICMSRetidoSimples := '0';
  ModalidadeBaseCalculo := '0';
  PercentualReducaoBase := '0';
  ModalidadeBC := '0';
  PercentualMargemICMS := '0';
  PercentualBCICMS := '0';
  ValorReducaoBCICMS := '0';
  ValorAliquotaICMS := '0';
  ValorICMS := '0';
  ValorICMSDesonerado := '0';
  MotivoDesoneracaoICMS := '0';
  AliquotaCalculoCredito := '0';
  ValorCreditoICMS := '0';
  ValorTotalTributos := ''; //tributos
  CSTPIS := '';
  BaseCalculoPIS := '';
  AliquotaPIS := '';
  ValorPIS := '';
  QuantVendidaPIS := '';
  ValorAliquotaPIS := '';
  CSTCOFINS := '';
  BaseCalculoCOFINS := '';
  AliquotaCOFINS := '';
  ValorCOFINS := '';
  QunatVendidaCOFINS := '';
  ValorAliquotaCOFINS := '';
  Reservado01 := '';
  Reservado02 := '';
  Reservado03 := '';
  Reservado04 := '';
  Reservado05 := '';
  Reservado06 := '';
  Reservado07 := '';
  Reservado08 := '';
  Reservado09 := '';
  Reservado10 := '';
  iRetorno := Bematech_FI_VendeItemCompleto( pchar( Codigo ), pchar( EAN13 ), pchar( Descricao ), pchar( IndiceDepartamento ), pchar( Aliquota ), pchar( UnidadeMedida ), pchar( TipoQuantidade ), pchar( CasasDecimaisQtde ), pchar( Quantidade ), pchar( CasasDecimaisValor ), pchar( ValorUnitario ), pchar( TipoDesconto ), pchar( ValorAcrescimo ), pchar( ValorDesconto ), pchar( ArredondaTrunca ), pchar( NCM ), pchar( CFOP ), pchar( InformacaoAdicional ), pchar( CST_ICMS ), pchar( OrigemProduto ), pchar( ItemListaServico ), pchar( CodigoISS ), pchar( NaturezaOperacaoISS ), pchar( IndicadorIncentivoFiscal ), pchar(
CodigoIBGE ), pchar( CSOSN ), pchar( ValorBaseCalculoSimples ), pchar( ValorICMSRetidoSimples ), pchar( ModalidadeBaseCalculo ), pchar( PercentualReducaoBase ), pchar( ModalidadeBC ), pchar( PercentualMargemICMS ), pchar( PercentualBCICMS ), pchar( ValorReducaoBCICMS ), pchar( ValorAliquotaICMS ), pchar( ValorICMS ), pchar( ValorICMSDesonerado ), pchar( MotivoDesoneracaoICMS ), pchar( AliquotaCalculoCredito ), pchar( ValorCreditoICMS ), pchar( ValorTotalTributos ), pchar( CSTPIS ), pchar( BaseCalculoPIS ), pchar( AliquotaPIS ), pchar( ValorPIS ), pchar( QuantVendidaPIS ), pchar( ValorAliquotaPIS ), pchar( CSTCOFINS ), pchar( BaseCalculoCOFINS ), pchar( AliquotaCOFINS ), pchar( ValorCOFINS ), pchar( QunatVendidaCOFINS ), pchar( ValorAliquotaCOFINS ), pchar( Reservado01 ), pchar( Reservado02 ), pchar( Reservado03 ), pchar( Reservado04 ), pchar( Reservado05 ), pchar( Reservado06 ), pchar( Reservado07 ), pchar( Reservado08 ), pchar( Reservado09 ), pchar( Reservado10 ));
Memo2.Clear;
Memo2.Lines.Add('VendeItemCompleto: '+IntToStr(iRetorno));
iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
Memo2.Lines.Add('Retorno VendeItemCompleto: ');
Memo2.Lines.Add('ACK: '+ IntToStr(ACK));
Memo2.Lines.Add('ST1: '+ IntToStr(ST1));
Memo2.Lines.Add('ST2: '+ IntToStr(ST2));
Memo2.Lines.Add('ST3: '+ IntToStr(ST3));

Memo1.Lines.Add('Código: '+Codigo);
Memo1.Lines.Add('EAN13: '+EAN13);
Memo1.Lines.Add('Descrição: '+Descricao);
Memo1.Lines.Add('Índice Departamento: '+IndiceDepartamento);
Memo1.Lines.Add('Alíquota: '+Aliquota);
Memo1.Lines.Add('Unidade de Medida: '+UnidadeMedida);
Memo1.Lines.Add('Tipo de Quantidade: '+TipoQuantidade);
Memo1.Lines.Add('Qtde. de casas decimais: '+CasasDecimaisQtde);
Memo1.Lines.Add('Quantidade: '+Quantidade);
Memo1.Lines.Add('Casas Decimais: '+CasasDecimaisValor);
Memo1.Lines.Add('Valor Unitário'+ValorUnitario);
Memo1.Lines.Add('Tipo de desconto: '+TipoDesconto);
Memo1.Lines.Add('Valor Acréscimo: '+ValorAcrescimo);
Memo1.Lines.Add('Valor Desconto: '+ValorDesconto);
Memo1.Lines.Add('Arredonda/Trunca: '+ArredondaTrunca);
Memo1.Lines.Add('NCM: '+NCM);
Memo1.Lines.Add('CFOP: '+CFOP);
Memo1.Lines.Add('Informação Adicional: '+InformacaoAdicional);
Memo1.Lines.Add('Origem do Produto: '+OrigemProduto);
Memo1.Lines.Add('CST ICMS: '+CST_ICMS);
Memo1.Lines.Add('Código IBGE: '+CodigoIBGE);
Memo1.Lines.Add('Código ISS: '+CodigoISS);
Memo1.Lines.Add('Nat. Oper. ISS: '+NaturezaOperacaoISS);
Memo1.Lines.Add('Ind. Incentivo Fiscal: '+IndicadorIncentivoFiscal);
Memo1.Lines.Add('Item Lista Serviço: '+ItemListaServico);
Memo1.Lines.Add('CSOSN: '+CSOSN);
Memo1.Lines.Add('Valor BC Simples: '+ValorBaseCalculoSimples);
Memo1.Lines.Add('ICMS retido Simples: '+ValorICMSRetidoSimples);
Memo1.Lines.Add('ModalidadeBC: '+ModalidadeBaseCalculo);
Memo1.Lines.Add('Redução Base: '+PercentualReducaoBase);
Memo1.Lines.Add('Modalidade BC: '+ModalidadeBC);
Memo1.Lines.Add('Margem ICMS: '+PercentualMargemICMS);
Memo1.Lines.Add('Percent. BC ICMS: '+PercentualBCICMS);
Memo1.Lines.Add('Redução BC ICMS: '+ValorReducaoBCICMS);
Memo1.Lines.Add('Aliquota ICMS: '+ValorAliquotaICMS);
Memo1.Lines.Add('ICMS: '+ValorICMS);
Memo1.Lines.Add('ICMS Desonerado: '+ValorICMSDesonerado);
Memo1.Lines.Add('Motivo Deson. ICMS: '+MotivoDesoneracaoICMS);
Memo1.Lines.Add('Aliq. Calculo Crédito: '+AliquotaCalculoCredito);
Memo1.Lines.Add('Crédito ICMS: '+ValorCreditoICMS);
Memo1.Lines.Add('----------------------------------------------------------');
end;

procedure TForm_Principal.DadosConsumidorNFCeClick(Sender: TObject);
begin
Form_DadosConsumidorNFCe := TForm_DadosConsumidorNFCe.Create(Application);
Form_DadosConsumidorNFCe.ShowModal;
end;

end.


