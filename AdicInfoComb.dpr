program AdicInfoComb;

uses
  Forms,
  Unit_AdicInfoComb in 'Unit_AdicInfoComb.pas' {FormAdicInfoCombustivel};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormAdicInfoCombustivel, FormAdicInfoCombustivel);
  Application.Run;
end.
