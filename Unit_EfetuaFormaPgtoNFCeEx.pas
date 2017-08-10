unit Unit_EfetuaFormaPgtoNFCeEx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFormEfetuaPagamentoNFCeEx = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    EditCnpjCred: TEdit;
    Label4: TLabel;
    ComboBoxBandeira: TComboBox;
    Label5: TLabel;
    Edit4: TEdit;
    RadioGroupIntegra: TRadioGroup;
    BitBtnOK: TBitBtn;
    ButtonLimpa: TButton;
    Sair: TButton;
    procedure BitBtnOKClick(Sender: TObject);
    procedure ButtonLimpaClick(Sender: TObject);
    procedure ComboBoxBandeiraChange(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEfetuaPagamentoNFCeEx: TFormEfetuaPagamentoNFCeEx;
  DescForma, valorForma, CNPJCrede, bandeira, descBandeira, CodAuto, CodIntegra : string;
  flagEx : integer;

implementation

{$R *.dfm}

procedure TFormEfetuaPagamentoNFCeEx.BitBtnOKClick(Sender: TObject);
begin
DescForma  := Edit1.Text;
valorForma := Edit2.Text;
CNPJCrede  := EditCnpjCred.Text;
CodAuto    := Edit4.Text;

flagEx := 1;

//Código de Integração *****************************
if RadioGroupIntegra.ItemIndex = 0 then
  CodIntegra := '0';

if RadioGroupIntegra.ItemIndex = 1 then
  CodIntegra := '1';

if RadioGroupIntegra.ItemIndex = 2 then
  CodIntegra := '2';

//Define o código e descrição da bandeira da credenciadora ************
if ComboBoxBandeira.ItemIndex = 0 then
  bandeira := '01';
  descBandeira := 'Visa';


if ComboBoxBandeira.ItemIndex = 1 then
  bandeira := '02';
  descBandeira := 'Mastercard';


if ComboBoxBandeira.ItemIndex = 2 then
  bandeira := '03';
  descBandeira := 'American Express';


if ComboBoxBandeira.ItemIndex = 3 then
  bandeira := '04';
  descBandeira := 'Sorocred';


if ComboBoxBandeira.ItemIndex = 4 then
  bandeira := '99';
  descBandeira := 'Outros';


if ComboBoxBandeira.ItemIndex = 5 then
  bandeira := '';
  descBandeira := 'Dinheiro';

Close;
end;

procedure TFormEfetuaPagamentoNFCeEx.ButtonLimpaClick(Sender: TObject);
begin
//limpa todos os campos **************************
Edit1.Clear;
Edit2.Clear;
EditCnpjCred.Clear;
Edit4.Clear;
ComboBoxBandeira.ItemIndex := 6;
end;

procedure TFormEfetuaPagamentoNFCeEx.ComboBoxBandeiraChange(
  Sender: TObject);
begin
//Customiza os campos de acordo com a bandeira escolhida ****************

{01 - Visa
02 - Mastercard
03 - American Express
04 - Sorocred
99 - Outros}

if ComboBoxBandeira.ItemIndex = 0 then //Visa
   EditCnpjCred.Clear;
   EditCnpjCred.Text := '01425787000101';
   RadioGroupIntegra.ItemIndex := 2;
   Edit1.Clear;
   Edit1.Text := 'Cartao Credito';

if ComboBoxBandeira.ItemIndex = 1 then //Mastercard
   EditCnpjCred.Clear;
   EditCnpjCred.Text := '01425787000101';
   RadioGroupIntegra.ItemIndex := 2;
   Edit1.Clear;
   Edit1.Text := 'Cartao Credito';

if ComboBoxBandeira.ItemIndex = 2 then //American Express
   EditCnpjCred.Clear;
   EditCnpjCred.Text := '60419645000195';
   RadioGroupIntegra.ItemIndex := 2;
   Edit1.Clear;
   Edit1.Text := 'Cartao Credito';

if ComboBoxBandeira.ItemIndex = 3 then //Sorocred
   EditCnpjCred.Clear;
   EditCnpjCred.Text := '01425787000101';
   RadioGroupIntegra.ItemIndex := 2;
   Edit1.Clear;
   Edit1.Text := 'Cartao Credito';

if ComboBoxBandeira.ItemIndex = 4 then //Outros
   EditCnpjCred.Clear;
   EditCnpjCred.Text := '';
   Edit1.Clear;
   Edit1.Text := 'Outros';
   RadioGroupIntegra.ItemIndex := 2;

if ComboBoxBandeira.ItemIndex = 5 then //Dinheiro
   EditCnpjCred.Text := '';
   Edit1.Clear;
   Edit1.Text := 'Dinheiro';
   RadioGroupIntegra.ItemIndex := 0;

end;

procedure TFormEfetuaPagamentoNFCeEx.SairClick(Sender: TObject);
begin
Close;
end;

procedure TFormEfetuaPagamentoNFCeEx.FormCreate(Sender: TObject);
begin
TRadioButton(RadioGroupIntegra.Buttons[0]).WordWrap:=True;
 TRadioButton(RadioGroupIntegra.Buttons[0]).WordWrap:=True;
end;

end.
