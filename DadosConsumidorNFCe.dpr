program DadosConsumidorNFCe;

uses
  Forms,
  Unit_DadosConsumidorNFCe in 'Unit_DadosConsumidorNFCe.pas' {Form_DadosConsumidorNFCe};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_DadosConsumidorNFCe, Form_DadosConsumidorNFCe);
  Application.Run;
end.
