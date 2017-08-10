program VendeItemCompleto;

uses
  Forms,
  Unit_VendeItemCompleto in 'Unit_VendeItemCompleto.pas' {Form_VIC};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_VIC, Form_VIC);
  Application.Run;
end.
