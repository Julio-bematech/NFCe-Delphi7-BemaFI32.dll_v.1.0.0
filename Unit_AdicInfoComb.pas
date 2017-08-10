unit Unit_AdicInfoComb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFormAdicInfoCombustivel = class(TForm)
    BitBtnAdiciona: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ButtonSair: TButton;
    ButtonLimpar: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    ButtonMostraInfo: TButton;
    procedure ButtonLimparClick(Sender: TObject);
    procedure ButtonSairClick(Sender: TObject);
    procedure BitBtnAdicionaClick(Sender: TObject);
    procedure ButtonMostraInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
FormAdicInfoCombustivel: TFormAdicInfoCombustivel;
itemIndex         : string;
ANPProductCode    : string;
percentMixGN      : string;
CODIF             : string;
quantity          : string;
consumeUF         : string;
BCProductCIDE     : string;
taxProductCIDE    : string;
valueCIDE         : string;
fuelNozzleNumber  : string;
fuelPumpNumber    : string;
fuelTankNumber    : string;
fuelGaugeInitial  : string;
fuelGaugeFinal    : string;
flag              : integer;

implementation

{$R *.dfm}

procedure TFormAdicInfoCombustivel.ButtonLimparClick(Sender: TObject);
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
end;

procedure TFormAdicInfoCombustivel.ButtonSairClick(Sender: TObject);
begin
Close;
end;

procedure TFormAdicInfoCombustivel.BitBtnAdicionaClick(Sender: TObject);
begin
flag := 1;
if Sender = ButtonMostraInfo then
begin
itemIndex         := Edit1.Text;
ANPProductCode    := Edit2.Text;
consumeUF         := Edit6.Text;
percentMixGN      := Edit3.Text;
CODIF             := Edit4.Text;
quantity          := Edit5.Text;
BCProductCIDE     := Edit7.Text;
taxProductCIDE    := Edit8.Text;
valueCIDE         := Edit9.Text;
fuelNozzleNumber  := Edit10.Text;
fuelPumpNumber    := Edit11.Text;
fuelTankNumber    := Edit12.Text;
fuelGaugeInitial  := Edit13.Text;
fuelGaugeFinal    := Edit14.Text;
end
else
begin
itemIndex         := Edit1.Text;
ANPProductCode    := Edit2.Text;
consumeUF         := Edit6.Text;
end;
Close;
end;

procedure TFormAdicInfoCombustivel.ButtonMostraInfoClick(Sender: TObject);
begin
FormAdicInfoCombustivel.Height := 327;
FormAdicInfoCombustivel.Width :=  544;
flag := 1;
end;

end.
