unit Departamento;

interface

type

  TDepartamento = class

  private
    Fid_departamento : Integer;
    fnm_departamento : string;
    flocal : string;

    function GetIdDepartamento: Integer;
    function GetLocal: string;
    function GetNmDepartamento: string;
    procedure SetIdDepartamento(const Value: Integer);
    procedure SetLocal(const Value: string);
    procedure SetNmDepartamento(const Value: string);
  public
    property id_departamento: Integer read GetIdDepartamento write SetIdDepartamento;
    property nm_departamento: string read GetNmDepartamento write SetNmDepartamento;
    property local: string read GetLocal write SetLocal;

    Constructor Create;overload;

  end;



implementation

constructor TDepartamento.Create;
begin

end;

function TDepartamento.GetIdDepartamento: Integer;
begin
  Result := Fid_departamento;
end;

function TDepartamento.GetLocal: string;
begin
  Result := flocal;
end;

function TDepartamento.GetNmDepartamento: string;
begin
  Result := fnm_departamento;
end;

procedure TDepartamento.SetIdDepartamento(const Value:Integer);
begin
  Fid_departamento := Value;
end;

procedure TDepartamento.SetLocal(const Value: string);
begin
  Flocal := Value;
end;

procedure TDepartamento.SetNmDepartamento(const Value: string);
begin
  Fnm_departamento := Value;
end;

end.
