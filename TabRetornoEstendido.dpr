program TabRetornoEstendido;

uses
  Forms,
  Unit_TabRetornoEstendido in 'Unit_TabRetornoEstendido.pas' {FormRetEstendido};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormRetEstendido, FormRetEstendido);
  Application.Run;
end.
