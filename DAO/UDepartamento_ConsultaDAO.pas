unit UDepartamento_ConsultaDAO;

interface

uses DM_Conexao,FireDAC.Comp.Client;

type
  TDepartamento_ConsultaDAO = class(TDM_Conexao)

  private

  public

    Constructor Create;overload;

    function BuscaDepartamentos():TFDQuery;


  end;

var
  Departamento_ConsultaDAO : TDepartamento_ConsultaDAO;

implementation

{ TDepartamento_ConsultaDAO }

function TDepartamento_ConsultaDAO.BuscaDepartamentos: TFDQuery;
begin
  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('SELECT');
  FDQuery.SQL.Add(' D.id_departamento,');
  FDQuery.SQL.Add(' D.nm_departamento,');
  FDQuery.SQL.Add(' D.local');
  FDQuery.SQL.Add('FROM DEPARTAMENTOS AS D');
  FDQuery.Open();


  Result := FDQuery;
end;

constructor TDepartamento_ConsultaDAO.Create;
begin
  inherited;
end;

end.
