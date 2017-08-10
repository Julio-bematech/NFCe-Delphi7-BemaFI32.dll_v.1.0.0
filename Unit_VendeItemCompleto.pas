unit Unit_VendeItemCompleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm_VIC = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    Edit10: TEdit;
    Label12: TLabel;
    ComboBox2: TComboBox;
    Label13: TLabel;
    Edit11: TEdit;
    Label14: TLabel;
    Edit12: TEdit;
    RadioGroup1: TRadioGroup;
    Edit13: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Edit14: TEdit;
    Label17: TLabel;
    Edit15: TEdit;
    Label18: TLabel;
    Panel2: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Edit22: TEdit;
    Label25: TLabel;
    Edit23: TEdit;
    Label26: TLabel;
    Edit24: TEdit;
    Label27: TLabel;
    Edit25: TEdit;
    Label28: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Label29: TLabel;
    Edit16: TEdit;
    Label30: TLabel;
    ComboBox6: TComboBox;
    Label31: TLabel;
    Edit21: TEdit;
    Edit26: TEdit;
    Label32: TLabel;
    Edit27: TEdit;
    Label33: TLabel;
    Edit28: TEdit;
    Label34: TLabel;
    Edit29: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    Edit30: TEdit;
    Label37: TLabel;
    ComboBox7: TComboBox;
    Panel3: TPanel;
    Label40: TLabel;
    Edit33: TEdit;
    Edit34: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    Edit35: TEdit;
    Label43: TLabel;
    Edit36: TEdit;
    Label44: TLabel;
    Edit37: TEdit;
    Label45: TLabel;
    Edit38: TEdit;
    Edit39: TEdit;
    Label46: TLabel;
    Edit40: TEdit;
    Label47: TLabel;
    Label48: TLabel;
    Edit41: TEdit;
    Label49: TLabel;
    Edit42: TEdit;
    Label50: TLabel;
    Edit43: TEdit;
    Label51: TLabel;
    Edit44: TEdit;
    Label52: TLabel;
    Edit45: TEdit;
    RealizarVenda: TButton;
    Sair: TButton;
    Limpar: TButton;
    Label39: TLabel;
    Edit32: TEdit;
    Edit31: TEdit;
    Label38: TLabel;
    Label21: TLabel;
    Edit19: TEdit;
    Label22: TLabel;
    Edit20: TEdit;
    Label19: TLabel;
    Edit17: TEdit;
    Label20: TLabel;
    Edit18: TEdit;
    GroupBox1: TGroupBox;
    MemoRetornos: TMemo;
    CancelaItem: TButton;
    Edit46: TEdit;
    Label53: TLabel;
    procedure SairClick(Sender: TObject);
    procedure RealizarVendaClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CancelaItemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_VIC: TForm_VIC;
  iRetorno, ACK, ST1, ST2, ST3: integer;

implementation

uses Math;
function Bematech_FI_VendeItemCompleto(
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
                    CEST :  string;
                    Reservado02 :  string;
                    Reservado03 :  string;
                    Reservado04 :  string;
                    Reservado05 :  string;
                    Reservado06 :  string;
                    Reservado07 :  string;
                    Reservado08 :  string;
                    Reservado09 :  string;
                    Reservado10 :  string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemAnterior(): Integer; StdCall; External 'BEMAFI32.DLL';

{$R *.dfm}

procedure TForm_VIC.FormCreate(Sender: TObject);
begin
iRetorno := Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD( '1' );
Application.HintHidePause:=10000; //tempo de duração = 10 segundos
end;


procedure TForm_VIC.SairClick(Sender: TObject);
begin
Close;
end;

procedure TForm_VIC.RealizarVendaClick(Sender: TObject);
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
QuantVendidaCOFINS :  string;
ValorAliquotaCOFINS :  string;
CEST :  string;
Reservado02 :  string;
Reservado03 :  string;
Reservado04 :  string;
Reservado05 :  string;
Reservado06 :  string;
Reservado07 :  string;
Reservado08 :  string;
Reservado09 :  string;
Reservado10 :  string;
TipoQuant, TipoDA, ArredTrunc, Indicador, Motivo, cOrigem   : string;

begin

  Codigo                := Edit1.Text;
  EAN13                 := Edit2.Text;
  Descricao             := Edit3.Text;
  IndiceDepartamento    := Edit4.Text;
  Aliquota              := Edit5.Text;
  UnidadeMedida         := Edit6.Text;

  if ComboBox1.ItemIndex = 0 then
    TipoQuant := 'I'
  else
    TipoQuant := 'F';

  TipoQuantidade        := TipoQuant;
  CasasDecimaisQtde     := Edit7.Text;
  Quantidade            := Edit8.Text;
  CasasDecimaisValor    := Edit9.Text;
  ValorUnitario         := Edit10.Text;

  if ComboBox2.ItemIndex = 0 then
    TipoDA := 'A'
  else
    TipoDA := 'D';

  TipoDesconto          := '$';
  ValorAcrescimo        := Edit11.Text;
  ValorDesconto         := Edit12.Text;

  if RadioGroup1.ItemIndex = 0 then
    ArredTrunc := 'A'
  else
    ArredTrunc := 'T';

  ArredondaTrunca        := ArredTrunc;
  NCM                    := Edit13.Text;
  CFOP                   := Edit14.Text;
  InformacaoAdicional    := Edit15.Text;
  If ComboBox3.ItemIndex = 0 Then
    cOrigem := '';
  If ComboBox3.ItemIndex = 1 Then
    cOrigem := '0';
  If ComboBox3.ItemIndex = 2 Then
    cOrigem := '1';
  If ComboBox3.ItemIndex = 3 Then
    cOrigem := '2';
    
  OrigemProduto          := cOrigem;
  CST_ICMS               := Edit17.Text;
  CodigoIBGE             := Edit18.Text;
  CodigoISS              := Edit19.Text;
  NaturezaOperacaoISS    := Edit20.Text;

  if ComboBox4.ItemIndex = 1 then
    Indicador := 'Sim'
  else
    Indicador := 'Não';

  IndicadorIncentivoFiscal := Indicador;
  ItemListaServico        := Edit22.Text;
  CSOSN                   := Edit23.Text;
  ValorBaseCalculoSimples := Edit24.Text;
  ValorICMSRetidoSimples  := Edit25.Text;
  ModalidadeBaseCalculo   := IntToStr(ComboBox5.ItemIndex);
  PercentualReducaoBase   := Edit16.Text;
  ModalidadeBC            := IntToStr(ComboBox6.ItemIndex);
  PercentualMargemICMS    := Edit21.Text;
  PercentualBCICMS        := Edit26.Text;
  ValorReducaoBCICMS      := Edit27.Text;
  ValorAliquotaICMS       := Edit28.Text;
  ValorICMS               := Edit29.Text;
  ValorICMSDesonerado     := Edit30.Text;

  if ComboBox7.ItemIndex = 0 then
    Motivo := '3';
  if ComboBox7.ItemIndex = 1 then
    Motivo := '9';
  if ComboBox7.ItemIndex = 2 then
    Motivo := '12';

  MotivoDesoneracaoICMS   := Motivo;
  AliquotaCalculoCredito  := Edit31.Text;
  ValorCreditoICMS        := Edit32.Text;
  ValorTotalTributos      := Edit33.Text; //tributos - Lei da Dilma
  CSTPIS                  := Edit34.Text;
  BaseCalculoPIS          := Edit35.Text;
  AliquotaPIS             := Edit36.Text;
  ValorPIS                := Edit37.Text;
  QuantVendidaPIS         := Edit38.Text;
  ValorAliquotaPIS        := Edit39.Text;
  CSTCOFINS               := Edit40.Text;
  BaseCalculoCOFINS       := Edit41.Text;
  AliquotaCOFINS          := Edit42.Text;
  ValorCOFINS             := Edit43.Text;
  QuantVendidaCOFINS      := Edit44.Text;
  ValorAliquotaCOFINS     := Edit45.Text;
  CEST                    := Edit46.Text;
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
CodigoIBGE ), pchar( CSOSN ), pchar( ValorBaseCalculoSimples ), pchar( ValorICMSRetidoSimples ), pchar( ModalidadeBaseCalculo ), pchar( PercentualReducaoBase ), pchar( ModalidadeBC ), pchar( PercentualMargemICMS ), pchar( PercentualBCICMS ), pchar( ValorReducaoBCICMS ), pchar( ValorAliquotaICMS ), pchar( ValorICMS ), pchar( ValorICMSDesonerado ), pchar( MotivoDesoneracaoICMS ), pchar( AliquotaCalculoCredito ), pchar( ValorCreditoICMS ), pchar( ValorTotalTributos ), pchar( CSTPIS ), pchar( BaseCalculoPIS ), pchar( AliquotaPIS ), pchar( ValorPIS ), pchar( QuantVendidaPIS ), pchar( ValorAliquotaPIS ), pchar( CSTCOFINS ), pchar( BaseCalculoCOFINS ), pchar( AliquotaCOFINS ), pchar( ValorCOFINS ), pchar( QuantVendidaCOFINS ), pchar( ValorAliquotaCOFINS ), pchar( CEST ), pchar( Reservado02 ), pchar( Reservado03 ), pchar( Reservado04 ), pchar( Reservado05 ), pchar( Reservado06 ), pchar( Reservado07 ), pchar( Reservado08 ), pchar( Reservado09 ), pchar( Reservado10 ) );
  MemoRetornos.Clear;
  MemoRetornos.Lines.Add('Retorno VendeItemCompleto: '+IntToStr(iRetorno));
  iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
  MemoRetornos.Lines.Add('Retornos da execução: ');
  MemoRetornos.Lines.Add('ACK: '+ IntToStr(ACK));
  MemoRetornos.Lines.Add('ST1: '+ IntToStr(ST1));
  MemoRetornos.Lines.Add('ST2: '+ IntToStr(ST2));
  MemoRetornos.Lines.Add('ST3: '+ IntToStr(ST3));
end;

procedure TForm_VIC.LimparClick(Sender: TObject);
begin

    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Edit5.Clear;
    Edit6.Clear;
    Edit7.Clear;
    Edit8.Clear;
    Edit9.Clear;
    Edit10.Clear;
    Edit11.Clear;
    Edit12.Clear;
    Edit13.Clear;
    Edit14.Clear;
    Edit15.Clear;
    Edit17.Clear;
    Edit18.Clear;
    Edit19.Clear;
    Edit20.Clear;
    Edit22.Clear;
    Edit23.Clear;
    Edit24.Clear;
    Edit25.Clear;
    Edit16.Clear;
    Edit21.Clear;
    Edit26.Clear;
    Edit27.Clear;
    Edit28.Clear;
    Edit29.Clear;
    Edit30.Clear;
    Edit31.Clear;
    Edit32.Clear;
    Edit33.Clear;
    Edit34.Clear;
    Edit35.Clear;
    Edit36.Clear;
    Edit37.Clear;
    Edit38.Clear;
    Edit39.Clear;
    Edit40.Clear;
    Edit41.Clear;
    Edit42.Clear;
    Edit43.Clear;
    Edit44.Clear;
    Edit45.Clear;
    Edit46.Clear;
end;

procedure TForm_VIC.CancelaItemClick(Sender: TObject);
begin
iRetorno := Bematech_FI_CancelaItemAnterior();
MemoRetornos.Clear;
  MemoRetornos.Lines.Add('Retorno CancelaItemAnterior: '+IntToStr(iRetorno));
  iRetorno := Bematech_FI_RetornoImpressoraMFD( ACK, ST1, ST2, ST3 );
  MemoRetornos.Lines.Add('Retornos da execução: ');
  MemoRetornos.Lines.Add('ACK: '+ IntToStr(ACK));
  MemoRetornos.Lines.Add('ST1: '+ IntToStr(ST1));
  MemoRetornos.Lines.Add('ST2: '+ IntToStr(ST2));
  MemoRetornos.Lines.Add('ST3: '+ IntToStr(ST3));
end;

end.
