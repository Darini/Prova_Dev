unit UEmpregadoDAO;

interface

uses
  UIDDAO, Empregado, DM_Conexao,FireDAC.Comp.Client;

type

  TEmpregadoDAO = class(TIDDAO)

  private
  public
    Constructor Create;overload;
    function Cadastrar(empregado :TEmpregado):boolean;

  end;

implementation

{ TEmpregadoDAO }

function TEmpregadoDAO.Cadastrar(empregado: TEmpregado): boolean;
var
  FDquery : TFDQuery;
  ID : Integer;
begin

  FDquery := TFDQuery.Create(nil);
  FDquery.Connection := FDConnection;
  FDQuery.SQL.Clear;

  FDQuery.SQL.Add('INSERT INTO EMPREGADOS');
  FDQuery.SQL.Add('(id_empregado,');
  FDQuery.SQL.Add(' cod_departamento,');
  FDQuery.SQL.Add(' cod_emp_funcao,');
  FDQuery.SQL.Add(' nm_empregado,');
  FDQuery.SQL.Add(' nm_funcao,');
  FDQuery.SQL.Add(' data_admissao,');
  FDQuery.SQL.Add(' salario,');
  FDQuery.SQL.Add(' comissao)');
  FDQuery.SQL.Add('VALUES');
  FDQuery.SQL.Add('(:id_empregado,');
  FDQuery.SQL.Add(' :cod_departamento,');
  FDQuery.SQL.Add(' :cod_emp_funcao,');
  FDQuery.SQL.Add(' :nm_empregado,');
  FDQuery.SQL.Add(' :nm_funcao,');
  FDQuery.SQL.Add(' :data_admissao,');
  FDQuery.SQL.Add(' :salario,');
  FDQuery.SQL.Add(' :comissao)');


  try

    ID:= GerarID('EMPREGADOS')+1;

    FDQuery.ParamByName('id_empregado').AsInteger     := ID;
    FDQuery.ParamByName('cod_departamento').AsInteger := empregado.departamento.id_departamento;
    FDQuery.ParamByName('cod_emp_funcao').AsInteger   := empregado.emp_funcao.id_empregado;
    FDQuery.ParamByName('nm_empregado').AsString      := empregado.nm_empregado;
    FDQuery.ParamByName('nm_funcao').AsString         := empregado.nm_funcao;
    FDQuery.ParamByName('data_admissao').AsDateTime   := empregado.data_admissao;
    FDQuery.ParamByName('salario').AsFloat            := empregado.salario;
    FDQuery.ParamByName('comissao').AsFloat           := empregado.comissao;

    FDQuery.Execute();

    AtualizarID('EMPREGADOS',ID);
  except
    begin
      Result := False;
    end
  end;


end;

constructor TEmpregadoDAO.Create;
begin
  inherited;
end;

end.
