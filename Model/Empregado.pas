unit Empregado;

interface

uses
  Departamento;

type

  TEmpregado = class

  private

    Fid_empregado : Integer;
    Fdepartamento : TDepartamento;
    Femp_funcao : TEmpregado;
    Fnm_empregado : string;
    fnm_funcao : string;
    fdata_admissao : TDateTime;
    fsalario : double;
    fcomissao : double;

    function GetIdEmpregado: Integer;
    procedure SetIdEmpregado(const Value: Integer);
    function GetDepartamento: TDepartamento;
    procedure SetDepartamento(const Value: TDepartamento);
    function GetEmpregado: TEmpregado;
    procedure SetEmpregado(const Value: TEmpregado);
    function GetNmEmpregado: string;
    procedure SetNmEmpregado(const Value: string);
    function GetNmFuncao: string;
    procedure SetNmFuncao(const Value: string);
    function GetDataAdmissao: TDateTime;
    procedure SetDataAdmissao(const Value: TDateTime);
    function GetSalario: double;
    procedure SetSalario(const Value: double);
    function GetComissao: double;
    procedure SetComissao(const Value: double);

  public

    property id_empregado : Integer read GetIdEmpregado write SetIdEmpregado;
    property departamento : TDepartamento read GetDepartamento write SetDepartamento;
    property emp_funcao : TEmpregado read GetEmpregado write SetEmpregado;
    property nm_empregado : string read GetNmEmpregado write SetNmEmpregado;
    property nm_funcao : string read GetNmFuncao write SetNmFuncao;
    property data_admissao: TDateTime read GetDataAdmissao write SetDataAdmissao;
    property salario : double read GetSalario write SetSalario;
    property comissao : double read GetComissao write SetComissao;

    Constructor Create;overload;

  end;

implementation

{ TEmpregado }

constructor TEmpregado.Create;
begin
  emp_funcao := Self;
  Fdepartamento := TDepartamento.Create;
end;

function TEmpregado.GetComissao: double;
begin
  Result := Fcomissao;
end;

function TEmpregado.GetDataAdmissao: TDateTime;
begin
  Result := Fdata_admissao;
end;

function TEmpregado.GetDepartamento: TDepartamento;
begin
  Result := Fdepartamento;
end;

function TEmpregado.GetEmpregado: TEmpregado;
begin
  Result := Femp_funcao;
end;

function TEmpregado.GetIdEmpregado: Integer;
begin
  Result := Fid_empregado;
end;

function TEmpregado.GetNmEmpregado: string;
begin
  Result := Fnm_empregado;
end;

function TEmpregado.GetNmFuncao: string;
begin
  Result := Fnm_funcao;
end;

function TEmpregado.GetSalario: double;
begin
  Result := Fsalario;
end;

procedure TEmpregado.SetComissao(const Value: double);
begin
  Fcomissao := Value;
end;

procedure TEmpregado.SetDataAdmissao(const Value: TDateTime);
begin
  Fdata_admissao := Value;
end;

procedure TEmpregado.SetDepartamento(const Value: TDepartamento);
begin
  Fdepartamento := Value;
end;

procedure TEmpregado.SetEmpregado(const Value: TEmpregado);
begin
  Femp_funcao := Value;
end;

procedure TEmpregado.SetIdEmpregado(const Value: Integer);
begin
  Fid_empregado := Value;
end;


procedure TEmpregado.SetNmEmpregado(const Value: string);
begin
  Fnm_empregado := Value;
end;

procedure TEmpregado.SetNmFuncao(const Value: string);
begin
  fnm_funcao := Value;
end;

procedure TEmpregado.SetSalario(const Value: double);
begin
  fsalario := Value;
end;

end.
