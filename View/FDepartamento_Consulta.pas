unit FDepartamento_Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DM_Conexao;

type
  TDepartamento_Consulta = class(TForm)
    DS: TDataSource;
    CDS: TClientDataSet;
    DSP: TDataSetProvider;
    dbgDepartamentos: TDBGrid;
    pnlBarraOpcoes: TPanel;
    pnlLimpar: TPanel;
    imgLimpar: TImage;
    pnlCadastrar: TPanel;
    imgCadastrar: TImage;
    lblTitulo: TLabel;
    edtNomeDepartamento: TEdit;
    lblNomeDepartamento: TLabel;
    pnlPesquisar: TPanel;
    imgConsulta: TImage;
    FDQDepartamentos_Consulta: TFDQuery;
    FDQDepartamentos_Consultaid_departamento: TIntegerField;
    FDQDepartamentos_Consultanm_departamento: TWideStringField;
    FDQDepartamentos_Consultalocal: TWideStringField;
    CDSid_departamento: TIntegerField;
    CDSnm_departamento: TWideStringField;
    CDSlocal: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    DM_Conexao : TDM_Conexao;

  public
    { Public declarations }
  end;

var
  Departamento_Consulta: TDepartamento_Consulta;

implementation

{$R *.dfm}

procedure TDepartamento_Consulta.FormCreate(Sender: TObject);
begin
  if not Assigned(DM_Conexao) then
    DM_Conexao := TDM_Conexao.Create(Self);

end;

procedure TDepartamento_Consulta.FormShow(Sender: TObject);
begin
  DSP.DataSet := DM_Conexao.FDQuery;
  CDS.Open;
end;

end.
