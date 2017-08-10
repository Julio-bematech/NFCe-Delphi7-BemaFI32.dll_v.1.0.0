program MensagemTerminaCupom;

uses
  Forms,
  Unit_MensagemTerminaCupom in 'Unit_MensagemTerminaCupom.pas' {FormTerminaFechamentoCupom};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormTerminaFechamentoCupom, FormTerminaFechamentoCupom);
  Application.Run;
end.
