program FormaPagamento;

uses
  Forms,
  Unit_FormaPagamento in 'Unit_FormaPagamento.pas' {Form_Pagamento};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_Pagamento, Form_Pagamento);
  Application.Run;
end.
