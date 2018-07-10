unit uFrmPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uDmConexao,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, Buttons, ImgList, Grids, DBGrids,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmPadrao = class(TForm)
    pnlTopBar: TPanel;
    pnlBody: TPanel;
    ToolBar1: TToolBar;
    Panel3: TPanel;
    sbtnSair: TSpeedButton;
    pgcPadrao: TPageControl;
    tbsPesquisa: TTabSheet;
    tbsDados: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    dbgPadrao: TDBGrid;
    Panel4: TPanel;
    sbnSalvar: TSpeedButton;
    sbnCancelar: TSpeedButton;
    sbnAlterar: TSpeedButton;
    sbnNovo: TSpeedButton;
    sbnExcluir: TSpeedButton;
    dsPadrao: TDataSource;
    procedure sbtnSairClick(Sender: TObject);
    procedure sbnNovoClick(Sender: TObject);
    procedure sbnSalvarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsPadraoStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

procedure TFrmPadrao.sbtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPadrao.sbnNovoClick(Sender: TObject);
begin

  pgcPadrao.Pages[0].TabVisible := False;
  pgcPadrao.Pages[1].TabVisible := True;
  pgcPadrao.ActivePageIndex := 1;
  sbnNovo.Enabled := pgcPadrao.ActivePageIndex = 0;

end;

procedure TFrmPadrao.sbnSalvarClick(Sender: TObject);
begin

  pgcPadrao.Pages[0].TabVisible := True;
  pgcPadrao.Pages[1].TabVisible := False;
  pgcPadrao.ActivePageIndex := 0;
  sbnNovo.Enabled := pgcPadrao.ActivePageIndex = 0;

end;

procedure TFrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) And (not (ActiveControl is TDBGrid)) then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TFrmPadrao.dsPadraoStateChange(Sender: TObject);
begin

 if TDataSource(Sender).DataSet.Active then
 begin

  sbnAlterar.Enabled  := Not(TDataSource(Sender).DataSet.State in [dsEdit, dsInsert]) and
                          (TDataSource(Sender).DataSet.RecordCount > 0) and (Not TDataSource(Sender).DataSet.IsEmpty);
  sbnExcluir.Enabled  := Not(TDataSource(Sender).DataSet.State in [dsEdit, dsInsert]) and
                          (TDataSource(Sender).DataSet.RecordCount > 0) and (Not TDataSource(Sender).DataSet.IsEmpty);
  sbnCancelar.Enabled := TDataSource(Sender).DataSet.State in [dsEdit, dsInsert];
  sbnSalvar.Enabled   := TDataSource(Sender).DataSet.State in [dsEdit, dsInsert];
  
 end
 else
 begin
   sbnAlterar.Enabled  := False;
   sbnExcluir.Enabled  := False;
   sbnCancelar.Enabled := False;
   sbnSalvar.Enabled   := False;
 end;
 
end;

end.
