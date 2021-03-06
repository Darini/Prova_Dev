unit FMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FDepartamento_Cadastro,
  FEmpregado_Cadastro;

type
  TMenu = class(TForm)

    mmMenuPrincipal: TMainMenu;
    miCadastro: TMenuItem;
    miDepartamento_Cadastro: TMenuItem;
    miEmpregado_Cadastro: TMenuItem;

    procedure miDepartamento_CadastroClick(Sender: TObject);
    procedure miEmpregado_CadastroClick(Sender: TObject);
  private
    { Private declarations }

    FDepartamento_Cadastro : TDepartamento_Cadastro;
    FEmpregado_Cadastro : TEmpregado_Cadastro;

  public
    { Public declarations }
  end;

var
  Menu: TMenu;

implementation

{$R *.dfm}

procedure TMenu.miDepartamento_CadastroClick(Sender: TObject);
begin
  if not Assigned(FDepartamento_Cadastro) then
    FDepartamento_Cadastro := TDepartamento_Cadastro.Create(Self);

  FDepartamento_Cadastro.Show();
end;

procedure TMenu.miEmpregado_CadastroClick(Sender: TObject);
begin
  if not Assigned(FEmpregado_Cadastro) then
    FEmpregado_Cadastro := TEmpregado_Cadastro.Create(Self);

  FEmpregado_Cadastro.Show();
end;

end.
