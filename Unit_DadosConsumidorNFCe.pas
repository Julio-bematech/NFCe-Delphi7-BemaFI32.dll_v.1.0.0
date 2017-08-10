unit Unit_DadosConsumidorNFCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Shellapi, Buttons;

type
  TForm_DadosConsumidorNFCe = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    ComboBox1: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Edit10: TEdit;
    Label12: TLabel;
    Edit11: TEdit;
    Label14: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Label15: TLabel;
    Edit14: TEdit;
    Label16: TLabel;
    Edit15: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edit16: TEdit;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    DadosConsumidorNFCe: TButton;
    Limpar: TButton;
    procedure DadosConsumidorNFCeClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_DadosConsumidorNFCe: TForm_DadosConsumidorNFCe;
  iRetorno, ACK, ST1, ST2, ST3 : integer;
  retorno : string;

implementation


function Bematech_FI_DadosConsumidorNFCe ( cCPF: string; cNome: string; cEndereco: string; cComplemento: string; cNumero: string; cBairro: string; cCodIBGE: string; cCidade: string; cEstado: string; cCEP: string; cCodPais: string; cPais: string; cTelefone: string; cIEIndicador: string; cIE: string; cSUFRAMA: string; cEmail : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';


{$R *.dfm}


procedure TForm_DadosConsumidorNFCe.DadosConsumidorNFCeClick(Sender: TObject);
var
  cCPF: string;
  cNome: string;
  cEndereco: string;
  cComplemento: string;
  cNumero: string;
  cBairro: string;
  cCodIBGE: string;
  cCidade: string;
  cEstado: string;
  cCEP: string;
  cCodPais: string;
  cPais: string;
  cTelefone: string;
  cIEIndicador: string;
  cIE: string;
  cSUFRAMA: string;
  cEmail : string;
  indicador: integer;
  RetornoX : integer;

begin

	cCPF := Edit1.Text;
	cNome := Edit2.Text;
	cEndereco := Edit3.Text;
	cComplemento := Edit4.Text;
	cNumero := Edit5.Text;
	cBairro := Edit6.Text;
	cCodIBGE := Edit7.Text;
	cCidade := Edit8.Text;
	cEstado := Edit13.Text;
	cCEP := Edit9.Text;
	cCodPais := Edit14.Text;
	cPais := Edit15.Text;
	cTelefone := Edit16.Text;
  if ComboBox1.ItemIndex = 0 then
    indicador := 1
  else
    indicador := 2;
	cIEIndicador := IntToStr(indicador);
	cIE := Edit10.Text;
	cSUFRAMA := Edit11.Text;
	cEmail := Edit12.Text;

iRetorno := Bematech_FI_DadosConsumidorNFCe( cCPF, cNome, cEndereco, cComplemento, cNumero, cBairro, cCodIBGE, cCidade, cEstado, cCEP, cCodPais, cPais, cTelefone, cIEIndicador, cIE, cSUFRAMA, cEmail);
Memo1.Clear;
  if iRetorno > 1 then
    begin
      RetornoX := iRetorno;
      Memo1.Lines.Add('Retorno DadosConsumidorNFCe: '+IntToStr(iRetorno));
    end;
  iRetorno := Bematech_FI_RetornoImpressoraMFD(ACK, ST1, ST2, ST3);
  if ST3 <>0 then
  begin
    Memo1.Lines.Add('Erron na execução: '+ IntToStr(RetornoX));
    Memo1.Lines.Add('Retorno VendeItemCompleto: ');
    Memo1.Lines.Add('ACK: '+ IntToStr(ACK));
    Memo1.Lines.Add('ST1: '+ IntToStr(ST1));
    Memo1.Lines.Add('ST2: '+ IntToStr(ST2));
    Memo1.Lines.Add('ST3: '+ IntToStr(ST3));
  end
  else
  Close;
end;

procedure TForm_DadosConsumidorNFCe.LimparClick(Sender: TObject);
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
Edit16.Clear;
end;
end.
