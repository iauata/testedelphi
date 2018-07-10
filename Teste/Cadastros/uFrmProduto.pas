unit uFrmProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ImgList, Grids, DBGrids, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls,
  Mask, DBCtrls, DBClient;

type
  TFrmProduto = class(TFrmPadrao)
    qryProduto: TZQuery;
    Label1: TLabel;
    edpesquisa: TEdit;
    Label2: TLabel;
    dbeID: TDBEdit;
    Label4: TLabel;
    dblcCategorias: TDBLookupComboBox;
    lblCpfCnpj: TLabel;
    dbeDescricao: TDBEdit;
    btnPesquisar: TSpeedButton;
    dsStatus: TDataSource;
    Label15: TLabel;
    dbeDataCadastro: TDBEdit;
    cdsStatus: TClientDataSet;
    cdsStatusidstatus: TIntegerField;
    cdsStatusdsstatus: TStringField;
    qryCategorias: TZQuery;
    dsCategorias: TDataSource;
    qryCategoriasid_categoria: TLargeintField;
    qryCategoriasds_categoria: TStringField;
    qryProdutoid_produto: TIntegerField;
    qryProdutods_produto: TStringField;
    qryProdutodthr_cadastro: TDateTimeField;
    qryProdutousu_cadastro: TLargeintField;
    qryProdutopreco_custo: TFloatField;
    qryProdutopreco_venda: TFloatField;
    qryProdutoid_categoria: TLargeintField;
    qryProdutostatus: TSmallintField;
    dbePCusto: TDBEdit;
    dbePVenda: TDBEdit;
    dbeUnd: TDBEdit;
    dbeEstoque: TDBEdit;
    qryProdutounidade: TStringField;
    dblcStatus: TDBLookupComboBox;
    Label10: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    qryProdutoqtd_estoque: TFloatField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure sbnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbnSalvarClick(Sender: TObject);
    procedure qryProdutoAfterInsert(DataSet: TDataSet);
    procedure qryProdutoBeforePost(DataSet: TDataSet);
    procedure edpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edpesquisaEnter(Sender: TObject);
    procedure sbnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}
uses uDmConexao;
procedure TFrmProduto.btnPesquisarClick(Sender: TObject);
begin
  inherited;

  try
    qryProduto.Close;
    qryProduto.ParamByName('spesquisa').Value := '%' + edpesquisa.Text + '%';
    qryProduto.Open;
    if (qryProduto.RecordCount > 0) and (Not qryProduto.IsEmpty) then
    begin
      dbgPadrao.SetFocus;
      edpesquisa.Text := '';
    end;

  except
    MessageDlg('Ocorreu um erro ao consultar!!!', mtError, [mbOk],0);
  end;

end;

procedure TFrmProduto.sbnNovoClick(Sender: TObject);
begin

  inherited;
  dbeDescricao.SetFocus;
  if TSpeedButton(Sender).Name = 'sbnNovo' then
  begin
    if not qryProduto.Active then
    begin
      qryProduto.Params[0].Clear;
      qryProduto.Open;
    end;
    qryProduto.Append;
  end
    else
      if TSpeedButton(Sender).Name = 'sbnAlterar' then
        qryProduto.Edit;

end;

procedure TFrmProduto.FormShow(Sender: TObject);
begin
  inherited;
  //Inciando Parametros da Tela
  pgcPadrao.Pages[0].TabVisible := True;
  pgcPadrao.Pages[1].TabVisible := False;
  pgcPadrao.ActivePageIndex := 0;

  cdsStatus.CreateDataSet;
  cdsStatus.Append;
  cdsStatusidstatus.Value := 1;
  cdsStatusdsstatus.Value := 'ATIVO';
  cdsStatus.Post;

  cdsStatus.Append;
  cdsStatusidstatus.Value := 2;
  cdsStatusdsstatus.Value := 'INATIVO';
  cdsStatus.Post;

  qryCategorias.Close;
  qryCategorias.Open;

  edpesquisa.SetFocus;

end;

procedure TFrmProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsStatus.EmptyDataSet;
  cdsStatus.Close;
  qryCategorias.Close;
  qryProduto.Close;
end;

procedure TFrmProduto.sbnSalvarClick(Sender: TObject);
begin

  if TSpeedButton(Sender).Name = 'sbnSalvar' then
  begin
    try
      if qryProduto.State in [dsEdit, dsInsert] then
        qryProduto.Post;
    except
      MessageDlg('Não foi possível salvar as Alterações!!!', mtWarning, [mbOk], 0);
      Abort;
    end;
  end
  else
  if TSpeedButton(Sender).Name = 'sbnCancelar' then
  begin

    try
      if qryProduto.State in [dsEdit, dsInsert] then
        qryProduto.Cancel;
    except
      MessageDlg('Não foi possível cancelar as Alterações!!!', mtWarning, [mbOk], 0);
      Abort;
    end;

  end;
  inherited;

end;

procedure TFrmProduto.qryProdutoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryProdutousu_cadastro.Value  := DmConexao.qryAcesso.FieldByName('usu_id').Value;
  qryProdutodthr_cadastro.Value := Now;
  qryProdutostatus.Value        := 1;
end;

procedure TFrmProduto.qryProdutoBeforePost(DataSet: TDataSet);
begin
  inherited;
  //Validando as entradas de dados
  if qryProdutods_produto.IsNull then
  begin
    MessageDlg('Informe a descricao do Produto!!', mtInformation, [mbOk], 0);
    dbeDescricao.SetFocus;
    Abort;
  end
  else
  if qryProdutoid_categoria.IsNull then
  begin
    MessageDlg('Informe a categoria do Produto!!', mtInformation, [mbOk], 0);
    dblcCategorias.SetFocus;
    Abort;
  end
  else
  if qryProdutostatus.IsNull then
  begin
    MessageDlg('Informe o Status do Produto!!', mtInformation, [mbOk], 0);
    dblcStatus.SetFocus;
    Abort;
  end
  else
  if qryProdutounidade.IsNull then
  begin
    MessageDlg('Informe a unidade do Produto!!', mtInformation, [mbOk], 0);
    dbeUnd.SetFocus;
    Abort;
  end;

end;

procedure TFrmProduto.edpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) and (TEdit(Sender).Text <> '') then
    btnPesquisar.Click;

end;

procedure TFrmProduto.edpesquisaEnter(Sender: TObject);
begin
  inherited;
  TEdit(Sender).Text := '';
  if qryProduto.Active then
    qryProduto.Close;

end;

procedure TFrmProduto.sbnExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja EXCLUIR o Produto: ' + qryCategoriasds_categoria.Value, mtWarning, [mbYes,mbNo], 0) = mrNo then
    Abort;

  try
    qryProduto.Delete;
    MessageDlg('Cliente EXCLUÍDO com sucesso!!', mtInformation, [mbOk], 0);
  except
  MessageDlg('Não foi possível EXCLUIR cliente!!', mtInformation, [mbOk], 0);
  end;

end;

end.
