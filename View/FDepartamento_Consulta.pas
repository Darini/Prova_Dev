unit FDepartamento_Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Departamento,UDepartamento_ConsultaDAO;

type
  TDepartamento_Consulta = class(TForm)
    DS: TDataSource;
    CDS: TClientDataSet;
    DSP: TDataSetProvider;
    dbgDepartamentos: TDBGrid;
    pnlBarraOpcoes: TPanel;
    pnlLimpar: TPanel;
    imgLimpar: TImage;
    pnlSelecionar: TPanel;
    imgSelecionar: TImage;
    lblTitulo: TLabel;
    edtNomeDepartamento: TEdit;
    lblNomeDepartamento: TLabel;
    pnlPesquisar: TPanel;
    imgConsulta: TImage;
    CDSid_departamento: TIntegerField;
    CDSnm_departamento: TWideStringField;
    CDSlocal: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbgDepartamentosDblClick(Sender: TObject);
    procedure pnlSelecionarClick(Sender: TObject);
    procedure pnlLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    objDepartamento : TDepartamento;

    Departamento_ConsultaDAO : TDepartamento_ConsultaDAO;
    function GetDepartamento: TDepartamento;

    procedure PreencheObjeto();

  public
    { Public declarations }

    property departamento : TDepartamento read GetDepartamento;
  end;

var
  Departamento_Consulta: TDepartamento_Consulta;

implementation


{$R *.dfm}


procedure TDepartamento_Consulta.dbgDepartamentosDblClick(Sender: TObject);
begin

  DSP.DataSet := Departamento_ConsultaDAO.BuscaDepartamentos();
  CDS.Open;

  PreencheObjeto;

  Close;
end;

procedure TDepartamento_Consulta.FormCreate(Sender: TObject);
begin
  if not Assigned(Departamento_ConsultaDAO) then
    Departamento_ConsultaDAO := TDepartamento_ConsultaDAO.Create(Self);

  if not Assigned(objDepartamento) then
    objDepartamento := TDepartamento.Create;

end;

procedure TDepartamento_Consulta.FormShow(Sender: TObject);
begin
  DSP.DataSet := Departamento_ConsultaDAO.BuscaDepartamentos();
  CDS.Open;

  Departamento_ConsultaDAO.FDConnection.Close;

end;

function TDepartamento_Consulta.GetDepartamento: TDepartamento;
begin
  Result := objDepartamento;
end;


procedure TDepartamento_Consulta.pnlLimparClick(Sender: TObject);
begin
  Close;
end;

procedure TDepartamento_Consulta.pnlSelecionarClick(Sender: TObject);
begin

  PreencheObjeto;

  Close;
end;

procedure TDepartamento_Consulta.PreencheObjeto;
begin
  objDepartamento.id_departamento := CDSid_departamento.AsInteger;
  objDepartamento.nm_departamento := CDSnm_departamento.AsString;
end;

end.
