unit UIDDAO;

interface

type

  TIDDAO = class

  function GerarID(nomeTabela : string):Integer;

  private


  public

    Constructor Create;overload;

  end;

var
  IDDAO : TIDDAO;

implementation

{ TIDDAO }

constructor TIDDAO.Create;
begin
  inherited;
end;



function TIDDAO.GerarID(nomeTabela: string): Integer;
begin
  Result := 0;
end;

end.
