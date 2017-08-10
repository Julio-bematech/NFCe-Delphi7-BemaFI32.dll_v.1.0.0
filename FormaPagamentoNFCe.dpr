program FormaPagamentoNFCe;

uses
  Forms,
  Unit_FormaPagamentoNFCe in 'Unit_FormaPagamentoNFCe.pas' {Form_PagamentoNFCe};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_PagamentoNFCe, Form_PagamentoNFCe);
  Application.Run;
end.
