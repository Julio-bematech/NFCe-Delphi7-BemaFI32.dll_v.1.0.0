unit Unit_Vinculado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormVinculado = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Valor: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVinculado: TFormVinculado;
  formaPag, valorPag : string;

implementation

uses Math;

{$R *.dfm}

procedure TFormVinculado.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TFormVinculado.ComboBox1Change(Sender: TObject);
begin

{Cartao Credito (V)
Cartao Debito (V)
Vale Aliment. (V)
Vale Refeicao (V)}

if (ComboBox1.ItemIndex = 1) then
  formaPag := 'Cartao Credito';
if (ComboBox1.ItemIndex = 2) then
  formaPag := 'Cartao Debito';
if (ComboBox1.ItemIndex = 3) then
  formaPag := 'Vale Aliment.';
if (ComboBox1.ItemIndex = 4) then
  formaPag := 'Vale Refeicao';

end;

procedure TFormVinculado.BitBtn1Click(Sender: TObject);
begin
valorPag := Edit1.Text;
end;

end.
