unit uFrmCadVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, DBCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids;

type
  TFrmCadVendas = class(TForm)
    Notebook1: TNotebook;
    Panel1: TPanel;
    pnlCaption: TPanel;
    pnlOpcoes: TPanel;
    Panel4: TPanel;
    mkeDataIni: TMaskEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    mkeDataFin: TMaskEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    btnPesquisar: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    qryClientes: TZQuery;
    dsLkpClientes: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadVendas: TFrmCadVendas;

implementation
Uses uDmConexao;

{$R *.dfm}

procedure TFrmCadVendas.FormShow(Sender: TObject);
begin
  qryClientes.Open;
  mkeDataIni.Text := FormatDateTime('dd/mm/yyyy', now);
  mkeDataFin.Text := FormatDateTime('dd/mm/yyyy', now);
end;

procedure TFrmCadVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryClientes.Close;
end;

procedure TFrmCadVendas.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
