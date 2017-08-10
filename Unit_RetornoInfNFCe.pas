unit Unit_RetornoInfNFCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormRetornoInfNFCe = class(TForm)
    ComboBoxInfNFCe: TComboBox;
    EditParametro: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    ButtonLimparInfo: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure ButtonLimparInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRetornoInfNFCe: TFormRetornoInfNFCe;
  ParametroForma : string;
  TipoForma, TipoFormaDesc : string;

implementation

{$R *.dfm}


procedure TFormRetornoInfNFCe.BitBtn1Click(Sender: TObject);
begin
{1=COO, 2=CCF, 3=Chave de Acesso, 4=NNF}
if ComboBoxInfNFCe.ItemIndex = 0 then
  TipoForma := '1';
  TipoFormaDesc := 'COO';
if ComboBoxInfNFCe.ItemIndex = 1 then
  TipoForma := '2';
  TipoFormaDesc := 'CCF';
if ComboBoxInfNFCe.ItemIndex = 2 then
  TipoForma := '3';
  TipoForma := '2';
  TipoFormaDesc := 'Chave de Acesso';
if ComboBoxInfNFCe.ItemIndex = 3 then
  TipoForma := '4';
  TipoFormaDesc := 'NNF';

ParametroForma := EditParametro.Text;
end;

procedure TFormRetornoInfNFCe.ButtonLimparInfoClick(Sender: TObject);
begin
EditParametro.Clear;
end;

end.
