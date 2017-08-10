program ExemploNFCe;

uses
  Forms,
  Unit_ExemploNFCe in 'Unit_ExemploNFCe.pas' {Form_Principal},
  //Unit_FormaPagamentoIndice in 'Unit_FormaPagamentoIndice.pas' {FormRetornoInfNFCe};
  Unit_RetornoInfNFCe in 'Unit_RetornoInfNFCe.pas';
{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.CreateForm(TFormRetornoInfNFCe, FormRetornoInfNFCe);
  Application.Run;
end.
