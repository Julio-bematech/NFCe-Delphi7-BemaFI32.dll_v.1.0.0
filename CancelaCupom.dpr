program CancelaCupom;

uses
  Forms,
  Unit_CancelaCupom in 'Unit_CancelaCupom.pas' {FormCancelaCupomFechado};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormCancelaCupomFechado, FormCancelaCupomFechado);
  Application.Run;
end.
