program ProvaDev;

uses
  Vcl.Forms,
  Menu_Form in 'Menu_Form.pas' {Form1},
  Empregado in 'Model\Empregado.pas',
  Departamento in 'Model\Departamento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.