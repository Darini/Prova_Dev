unit UIDDAO;

interface

uses DM_Conexao,FireDAC.Comp.Client;

type

  TIDDAO = class(TDM_Conexao)

  function GerarID(nomeTabela : string):Integer;
  procedure AtualizarID(nomeTabela: string;id:Integer);

  private


  public

    Constructor Create;overload;

  end;

var
  IDDAO : TIDDAO;

implementation

{ TIDDAO }

procedure TIDDAO.AtualizarID(nomeTabela: string;id:Integer);

begin

  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('UPDATE ID_TABELAS');
  FDQuery.SQL.Add(' SET ID = :ID');
  FDQuery.SQL.Add('WHERE nm_tabela = :nm_tabela');
  FDQuery.ParamByName('ID').AsInteger := id;
  FDQuery.ParamByName('nm_tabela').AsString := nomeTabela;

  FDQuery.Execute();
end;

constructor TIDDAO.Create;
begin
  inherited;
end;



function TIDDAO.GerarID(nomeTabela: string): Integer;
begin

  FDQuery.SQL.Clear;
  FDQuery.SQL.Add('SELECT');
  FDQuery.SQL.Add(' ID');
  FDQuery.SQL.Add('FROM ID_TABELAS');
  FDQuery.SQL.Add(' WHERE nm_tabela = :nm_tabela');

  FDQuery.ParamByName('nm_tabela').AsString := nomeTabela;
  FDQuery.Open();


  Result := FDQuery.FieldByName('ID').AsInteger;
end;

end.
