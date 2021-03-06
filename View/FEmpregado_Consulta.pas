unit FEmpregado_Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Empregado, UEmpregado_ConsultaDAO, frxClass, frxDBSet;

type
  TEmpregado_Consulta = class(TForm)
    lblTitulo: TLabel;
    lblNomeEmpregado: TLabel;
    dbgEmpregados: TDBGrid;
    pnlBarraOpcoes: TPanel;
    pnlLimpar: TPanel;
    imgLimpar: TImage;
    pnlSelecionar: TPanel;
    imgSelecionar: TImage;
    edtNomeEmpregado: TEdit;
    pnlPesquisar: TPanel;
    imgConsulta: TImage;
    DS: TDataSource;
    CDS: TClientDataSet;
    DSP: TDataSetProvider;
    CDSid_empregado: TIntegerField;
    CDSnm_departamento: TWideStringField;
    CDSnm_empregado: TWideStringField;
    CDSnm_funcao: TWideStringField;
    frxDBEmpregados: TfrxDBDataset;
    frxRelEmpregados: TfrxReport;
    pnImprimir: TPanel;
    imgImprimir: TImage;
    procedure dbgEmpregadosDblClick(Sender: TObject);
    procedure pnlSelecionarDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlSelecionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    objEmpregado : TEmpregado;

    Empregado_ConsultaDAO : TEmpregado_ConsultaDAO;

    procedure PreencheObjeto();
    function GetEmpregado: TEmpregado;

  public
    { Public declarations }

    property empregado : TEmpregado read GetEmpregado;
  end;

var
  Empregado_Consulta: TEmpregado_Consulta;

implementation

{$R *.dfm}

procedure TEmpregado_Consulta.dbgEmpregadosDblClick(Sender: TObject);
begin
  DSP.DataSet := Empregado_ConsultaDAO.BuscaEmpregados();
  CDS.Open;

  PreencheObjeto;

  Close;
end;

procedure TEmpregado_Consulta.FormCreate(Sender: TObject);
begin
  if not Assigned(Empregado_ConsultaDAO) then
    Empregado_ConsultaDAO := TEmpregado_ConsultaDAO.Create(Self);

  if not Assigned(objEmpregado) then
    objEmpregado := TEmpregado.Create;

end;


procedure TEmpregado_Consulta.FormShow(Sender: TObject);
begin
  DSP.DataSet := Empregado_ConsultaDAO.BuscaEmpregados();
  CDS.Open;
end;

function TEmpregado_Consulta.GetEmpregado: TEmpregado;
begin
   Result := objEmpregado;
end;


procedure TEmpregado_Consulta.pnImprimirClick(Sender: TObject);
begin
  CDS.First;
  CDS.Open;

  frxRelEmpregados.ShowReport();
end;

procedure TEmpregado_Consulta.pnlSelecionarClick(Sender: TObject);
begin
  PreencheObjeto;
  Close;
end;

procedure TEmpregado_Consulta.pnlSelecionarDblClick(Sender: TObject);
begin
  PreencheObjeto;

  Close;
end;

procedure TEmpregado_Consulta.PreencheObjeto;
begin
  objEmpregado.id_empregado := CDSid_empregado.AsInteger;
  objEmpregado.nm_empregado := CDSnm_empregado.AsString;
end;

end.
