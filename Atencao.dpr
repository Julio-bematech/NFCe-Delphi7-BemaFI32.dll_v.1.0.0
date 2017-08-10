program Atencao;

uses
  Forms,
  UnitAtencao in 'UnitAtencao.pas' {FormAtencao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormAtencao, FormAtencao);
  Application.Run;
end.
