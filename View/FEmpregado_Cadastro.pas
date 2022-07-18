unit FEmpregado_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, FDepartamento_Consulta;
type
  TEmpregado_Cadastro = class(TForm)
    lblID: TLabel;
    edtID: TEdit;
    edtNome: TEdit;
    lblNomeDepartamento: TLabel;
    edtNomeEmpregado: TEdit;
    lblNomeEmpregado: TLabel;
    lblTitulo: TLabel;
    pnlBarraOpcoes: TPanel;
    pnlCadastrar: TPanel;
    imgCadastrar: TImage;
    edtIdDepartamento: TEdit;
    lblIdDepartamento: TLabel;
    edtIdEmpregadoFuncao: TEdit;
    lblIdEmpregadoFuncao: TLabel;
    edtNomeEmpregadoFuncao: TEdit;
    lblNomeEmpregadoFuncao: TLabel;
    edtNomeFuncao: TEdit;
    lblNomeFuncao: TLabel;
    lblDataAdmissao: TLabel;
    edtSalario: TEdit;
    lblSalario: TLabel;
    edtComissao: TEdit;
    lblComissao: TLabel;
    dtpDataAdmissao: TDateTimePicker;
    pnlLimpar: TPanel;
    imgLimpar: TImage;
    pnlEliminar: TPanel;
    imgEliminar: TImage;
    pnlConsultar: TPanel;
    imgConsultar: TImage;
    pnlPesquisar: TPanel;
    imgConsulta: TImage;
    Panel1: TPanel;
    Image1: TImage;
    procedure pnlPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    FDepartamento_Consulta : TDepartamento_Consulta;

  public
    { Public declarations }
  end;

var
  Empregado_Cadastro: TEmpregado_Cadastro;

implementation

{$R *.dfm}

{ TEmpregado_Cadastro }


procedure TEmpregado_Cadastro.FormCreate(Sender: TObject);
begin
  if not Assigned(FDepartamento_Consulta) then
    FDepartamento_Consulta := TDepartamento_Consulta.Create(Self);
end;

procedure TEmpregado_Cadastro.pnlPesquisarClick(Sender: TObject);
begin
  FDepartamento_Consulta.Show();
end;

end.