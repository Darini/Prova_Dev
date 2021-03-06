unit UEmpregado_ConsultaDAO;

interface

uses
  DM_Conexao, FireDAC.Comp.Client;

type
  TEmpregado_ConsultaDAO = class(TDM_Conexao)

  private


  public

    Constructor Create;overload;

    function BuscaEmpregados():TFDQuery;
  end;

implementation

{ TEmpregado_ConsultaDAO }

function TEmpregado_ConsultaDAO.BuscaEmpregados: TFDQuery;
begin
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('SELECT');
  FDQuery.SQL.Add(' E.id_empregado,');
  FDQuery.SQL.Add(' D.nm_departamento,');
  FDQuery.SQL.Add(' E2.nm_empregado,');
  FDQuery.SQL.Add(' E.nm_funcao');
  FDQuery.SQL.Add('FROM EMPREGADOS AS E');
  FDQuery.SQL.Add('INNER JOIN DEPARTAMENTOS AS D');
  FDQuery.SQL.Add('ON D.id_departamento = E.cod_departamento');
  FDQuery.SQL.Add('INNER JOIN EMPREGADOS AS E2');
  FDQuery.SQL.Add('ON E2.id_empregado = E.id_empregado');
  FDQuery.Open();


  Result := FDQuery;
end;

constructor TEmpregado_ConsultaDAO.Create;
begin
  inherited;
end;

end.
