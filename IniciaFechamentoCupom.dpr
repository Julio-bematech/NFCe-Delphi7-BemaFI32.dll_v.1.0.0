program IniciaFechamentoCupom;

uses
  Forms,
  Unit_IniciaFechamentoCupom in 'Unit_IniciaFechamentoCupom.pas' {FormIniciaFechamentoCupom};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormIniciaFechamentoCupom, FormIniciaFechamentoCupom);
  Application.Run;
end.
