program ProvaDev;

uses
  Vcl.Forms,
  Empregado in 'Model\Empregado.pas',
  Departamento in 'Model\Departamento.pas',
  UDepartamentoDAO in 'DAO\UDepartamentoDAO.pas',
  UEmpregadoDAO in 'DAO\UEmpregadoDAO.pas',
  DepartamentoCTR in 'Controller\DepartamentoCTR.pas',
  EmpregadoCTR in 'Controller\EmpregadoCTR.pas',
  UIDDAO in 'DAO\UIDDAO.pas',
  FDepartamento_Cadastro in 'View\FDepartamento_Cadastro.pas' {Departamento_Cadastro},
  DM_Conexao in 'Util\DM_Conexao.pas' {DM_Conexao: TDataModule},
  FMenu in 'FMenu.pas' {Menu},
  FEmpregado_Cadastro in 'View\FEmpregado_Cadastro.pas' {Empregado_Cadastro},
  FDepartamento_Consulta in 'View\FDepartamento_Consulta.pas' {Departamento_Consulta},
  UDepartamento_ConsultaDAO in 'DAO\UDepartamento_ConsultaDAO.pas',
  UEmpregado_ConsultaDAO in 'DAO\UEmpregado_ConsultaDAO.pas',
  FEmpregado_Consulta in 'View\FEmpregado_Consulta.pas' {Empregado_Consulta};

{Departamento_ConsultaDAO}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenu, Menu);
  Application.Run;
end.
