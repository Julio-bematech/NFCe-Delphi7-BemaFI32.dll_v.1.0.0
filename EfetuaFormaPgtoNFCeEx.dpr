program EfetuaFormaPgtoNFCeEx;

uses
  Forms,
  Unit_EfetuaFormaPgtoNFCeEx in 'Unit_EfetuaFormaPgtoNFCeEx.pas' {FormEfetuaPagamentoNFCeEx};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormEfetuaPagamentoNFCeEx, FormEfetuaPagamentoNFCeEx);
  Application.Run;
end.
