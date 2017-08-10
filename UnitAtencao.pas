unit UnitAtencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormAtencao = class(TForm)
    Memo1: TMemo;
    ButtonExecRedZ: TButton;
    ButtonJaExecRedZ: TButton;
    procedure ButtonJaExecRedZClick(Sender: TObject);
    procedure ButtonExecRedZClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtencao: TFormAtencao;
  eXecZ : integer;

implementation
{$R *.dfm}

procedure TFormAtencao.ButtonJaExecRedZClick(Sender: TObject);
begin
eXecZ := 1;
Close;
end;

procedure TFormAtencao.ButtonExecRedZClick(Sender: TObject);
begin
eXecZ := 2;
Close;
end;

end.
