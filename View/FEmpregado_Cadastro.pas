unit FEmpregado_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, FDepartamento_Consulta, Departamento,
  Empregado, FEmpregado_Consulta, UEmpregadoDAO;
type
  TEmpregado_Cadastro = class(TForm)
    lblID: TLabel;
    edtID: TEdit;
    edtNomeDepartamento: TEdit;
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
    pnlPesquisarDepartamentos: TPanel;
    imgConsulta: TImage;
    pnlPesquisarEmpregados: TPanel;
    Image1: TImage;
    procedure pnlPesquisarDepartamentosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlPesquisarEmpregadosClick(Sender: TObject);
    procedure pnlCadastrarClick(Sender: TObject);

    procedure Limpar();
  private
    { Private declarations }

    FDepartamento_Consulta : TDepartamento_Consulta;
    FEmpregado_Consulta : TEmpregado_Consulta;

    objDepartamento : TDepartamento;
    objEmpregadoFuncao : TEmpregado;

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

  if not Assigned(objDepartamento) then
    objDepartamento := TDepartamento.Create;
end;

procedure TEmpregado_Cadastro.Limpar;
begin
  edtIdDepartamento.Text := '';
  edtNomeDepartamento.Text := '';
  edtIdEmpregadoFuncao.Text := '';
  edtNomeEmpregadoFuncao.Text := '';
  edtNomeEmpregado.Text := '';
  edtNomeFuncao.Text := '';
  dtpDataAdmissao.DateTime := Now;
  edtComissao.Text := '';
  edtSalario.Text := '';
end;

procedure TEmpregado_Cadastro.pnlCadastrarClick(Sender: TObject);
var
  objEmpregado : TEmpregado;
  Empregado_DAO : TEmpregadoDAO;
begin

  objEmpregado := TEmpregado.Create();

  Empregado_DAO := TEmpregadoDAO.Create(Self);

  objEmpregado.id_empregado := 0;
  objEmpregado.nm_empregado := edtNomeEmpregado.Text;
  objEmpregado.departamento.id_departamento := StrToInt(edtIdDepartamento.Text);
  objEmpregado.emp_funcao.id_empregado := StrToInt(edtIdEmpregadoFuncao.Text);
  objEmpregado.nm_funcao    := edtNomeFuncao.Text;
  objEmpregado.data_admissao := dtpDataAdmissao.DateTime;
  objEmpregado.salario      := StrToFloat(edtSalario.Text);
  objEmpregado.comissao     := StrToFloat(edtComissao.Text);

  if Empregado_DAO.Cadastrar(objEmpregado) then
  begin
    Application.MessageBox('Sucesso!','Empregado cadastrado com sucesso!',MB_OK+MB_ICONINFORMATION,);
    Limpar();
  end;

end;

procedure TEmpregado_Cadastro.pnlPesquisarDepartamentosClick(Sender: TObject);
begin

  if not Assigned(FDepartamento_Consulta) then
    FDepartamento_Consulta := TDepartamento_Consulta.Create(Self);

  FDepartamento_Consulta.ShowModal();

  Self.objDepartamento := FDepartamento_Consulta.departamento;

  edtIdDepartamento.Text := IntToStr(Self.objDepartamento.id_departamento);
  edtNomeDepartamento.Text  := Self.objDepartamento.nm_departamento;

  FreeAndNil(FDepartamento_Consulta);


end;

procedure TEmpregado_Cadastro.pnlPesquisarEmpregadosClick(Sender: TObject);
begin

  if not Assigned(FEmpregado_Consulta) then
    FEmpregado_Consulta := TEmpregado_Consulta.Create(Self);

  FEmpregado_Consulta.ShowModal();

  Self.objEmpregadoFuncao := FEmpregado_Consulta.empregado;

  edtIdEmpregadoFuncao.Text := IntToStr(Self.objEmpregadoFuncao.id_empregado);
  edtNomeEmpregadoFuncao.Text  := Self.objEmpregadoFuncao.nm_empregado;

  FreeAndNil(FEmpregado_Consulta);
end;

end.
