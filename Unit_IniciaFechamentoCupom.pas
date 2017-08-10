unit Unit_IniciaFechamentoCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormIniciaFechamentoCupom = class(TForm)
    ComboBoxFechamento: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBoxTipo: TComboBox;
    Edit1: TEdit;
    Label3: TLabel;
    BitBtnOk: TBitBtn;
    ButtonSair: TButton;
    procedure BitBtnOkClick(Sender: TObject);
    procedure ButtonSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIniciaFechamentoCupom: TFormIniciaFechamentoCupom;
  valor, forma, tipo : string;


implementation

{$R *.dfm}

procedure TFormIniciaFechamentoCupom.BitBtnOkClick(Sender: TObject);
begin
valor := Edit1.Text;

if ComboBoxFechamento.ItemIndex = 0 then
  forma :=  'A';
if ComboBoxFechamento.ItemIndex = 1 then
  forma := 'D';

if ComboBoxTipo.ItemIndex = 0 then
  tipo := '$';
if ComboBoxTipo.ItemIndex = 1 then
  tipo := '%';

end;

procedure TFormIniciaFechamentoCupom.ButtonSairClick(Sender: TObject);
begin
Close;
end;

end.
