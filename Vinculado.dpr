program Vinculado;

uses
  Forms,
  Unit_Vinculado in 'Unit_Vinculado.pas' {FormVinculado};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormVinculado, FormVinculado);
  Application.Run;
end.
