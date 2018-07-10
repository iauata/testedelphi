unit uFrmCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadrao, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ImgList, Grids, DBGrids, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls,
  Mask, DBCtrls, DBClient;

type
  TFrmCliente = class(TFrmPadrao)
    qryCliente: TZQuery;
    Label1: TLabel;
    edpesquisa: TEdit;
    Label2: TLabel;
    dbeID: TDBEdit;
    Label3: TLabel;
    dbeNome: TDBEdit;
    Label4: TLabel;
    dblcbTipo: TDBLookupComboBox;
    lblCpfCnpj: TLabel;
    dbeCpfCnpj: TDBEdit;
    lblDataNC: TLabel;
    dbeDataNasc: TDBEdit;
    grbInfoContato: TGroupBox;
    Label7: TLabel;
    dbeEndereco: TDBEdit;
    Label8: TLabel;
    dbeNumero: TDBEdit;
    Label9: TLabel;
    dbeBairro: TDBEdit;
    Label10: TLabel;
    dbeCidade: TDBEdit;
    Label11: TLabel;
    dbeEstado: TDBEdit;
    Label12: TLabel;
    dbeCep: TDBEdit;
    Label13: TLabel;
    dbeComplemento: TDBEdit;
    btnPesquisar: TSpeedButton;
    Label14: TLabel;
    dbeFone1: TDBEdit;
    cdsTipoPessoa: TClientDataSet;
    cdsTipoPessoaidPessoa: TStringField;
    cdsTipoPessoadsPessoa: TStringField;
    dsTipoPessoa: TDataSource;
    Label15: TLabel;
    dbeDataCadastro: TDBEdit;
    qryClientenome: TStringField;
    qryClientetipo_cliente: TStringField;
    qryClientecpfcnpj: TStringField;
    qryClientedata_nasc: TDateField;
    qryClienteendereco: TStringField;
    qryClientenumero: TStringField;
    qryClientebairro: TStringField;
    qryClientecidade: TStringField;
    qryClienteestado: TStringField;
    qryClientecep: TStringField;
    qryClientecomplemento: TStringField;
    qryClienteusu_cadastro: TLargeintField;
    qryClientedthr_cadastro: TDateTimeField;
    qryClienteid_cliente: TIntegerField;
    dbeFone2: TDBEdit;
    qryClientefone1: TStringField;
    qryClientefone2: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure sbnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbnSalvarClick(Sender: TObject);
    procedure qryClienteAfterInsert(DataSet: TDataSet);
    procedure qryClienteBeforePost(DataSet: TDataSet);
    procedure qryClientetipo_clienteChange(Sender: TField);
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
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}
uses uDmConexao;
procedure TFrmCliente.btnPesquisarClick(Sender: TObject);
begin
  inherited;

  try
    qryCliente.Close;
    qryCliente.ParamByName('spesquisa').Value := '%' + edpesquisa.Text + '%';
    qryCliente.Open;
    if (qryCliente.RecordCount > 0) and (Not qryCliente.IsEmpty) then
    begin
      dbgPadrao.SetFocus;
      edpesquisa.Text := '';
    end;

  except
    MessageDlg('Ocorreu um erro ao consultar!!!', mtError, [mbOk],0);
  end;

end;

procedure TFrmCliente.sbnNovoClick(Sender: TObject);
begin

  inherited;
  dblcbTipo.SetFocus;
  if TSpeedButton(Sender).Name = 'sbnNovo' then
  begin
    if not qryCliente.Active then
    begin
      qryCliente.Params[0].Clear;
      qryCliente.Open;
    end;
    qryCliente.Append;
  end
    else
      if TSpeedButton(Sender).Name = 'sbnAlterar' then
        qryCliente.Edit;

end;

procedure TFrmCliente.FormShow(Sender: TObject);
begin
  inherited;
  //Inciando Parametros da Tela
  pgcPadrao.Pages[0].TabVisible := True;
  pgcPadrao.Pages[1].TabVisible := False;
  pgcPadrao.ActivePageIndex := 0;

  cdsTipoPessoa.CreateDataSet;
  cdsTipoPessoa.Append;
  cdsTipoPessoaidPessoa.Value := 'F';
  cdsTipoPessoadsPessoa.Value := 'FÍSICA';
  cdsTipoPessoa.Post;

  cdsTipoPessoa.Append;
  cdsTipoPessoaidPessoa.Value := 'J';
  cdsTipoPessoadsPessoa.Value := 'JURÍDICA';
  cdsTipoPessoa.Post;

  edpesquisa.SetFocus;

end;

procedure TFrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsTipoPessoa.EmptyDataSet;
  cdsTipoPessoa.Close;
  qryCliente.Close;
  
end;

procedure TFrmCliente.sbnSalvarClick(Sender: TObject);
begin

  if TSpeedButton(Sender).Name = 'sbnSalvar' then
  begin
    try
      if qryCliente.State in [dsEdit, dsInsert] then
        qryCliente.Post;
    except
      MessageDlg('Não foi possível salvar as Alterações!!!', mtWarning, [mbOk], 0);
      Abort;
    end;
  end
  else
  if TSpeedButton(Sender).Name = 'sbnCancelar' then
  begin

    try
      if qryCliente.State in [dsEdit, dsInsert] then
        qryCliente.Cancel;
    except
      MessageDlg('Não foi possível cancelar as Alterações!!!', mtWarning, [mbOk], 0);
      Abort;
    end;

  end;
  inherited;

end;

procedure TFrmCliente.qryClienteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryClientetipo_cliente.Value  := 'F';
  qryClienteusu_cadastro.Value  := DmConexao.qryAcesso.FieldByName('usu_id').Value;
  qryClientedthr_cadastro.Value := Now;
end;

procedure TFrmCliente.qryClienteBeforePost(DataSet: TDataSet);
begin
  inherited;
  //Validando as entradas de dados
  if qryClientetipo_cliente.IsNull then
  begin
    MessageDlg('Informe o Tipo do Cliente!!', mtInformation, [mbOk], 0);
    dblcbTipo.SetFocus;
    Abort;
  end
  else
  if qryClientenome.IsNull then
  begin
    MessageDlg('Informe o Nome/Razão do Cliente!!', mtInformation, [mbOk], 0);
    dbeNome.SetFocus;
    Abort;
  end
  else
  if qryClientecpfcnpj.IsNull then
  begin
    MessageDlg('Informe o Cnpj/Cpf do Cliente!!', mtInformation, [mbOk], 0);
    dbeCpfCnpj.SetFocus;
    Abort;
  end
  else
  if qryClientedata_nasc.IsNull then
  begin
    MessageDlg('Informe da Data de Nasc./Criacao do Cliente!!', mtInformation, [mbOk], 0);
    dbeDataNasc.SetFocus;
    Abort;
  end;

end;

procedure TFrmCliente.qryClientetipo_clienteChange(Sender: TField);
begin
  inherited;

  qryClientecpfcnpj.Clear;

  if sender.Value = 'F' then
  begin
    lblCpfCnpj.Caption := 'CPF';
    lblDataNC.Caption  := 'Data Nasc.';
    qryClientecpfcnpj.EditMask := '000.000.000-00;0'
  end
  else
  begin
    lblCpfCnpj.Caption := 'CNPJ';
    lblDataNC.Caption  := 'Data Criação';
    qryClientecpfcnpj.EditMask := '00.000.000/0000-00;0';
  end;

end;

procedure TFrmCliente.edpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) and (TEdit(Sender).Text <> '') then
    btnPesquisar.Click;

end;

procedure TFrmCliente.edpesquisaEnter(Sender: TObject);
begin
  inherited;
  TEdit(Sender).Text := '';
  if qryCliente.Active then
    qryCliente.Close;

end;

procedure TFrmCliente.sbnExcluirClick(Sender: TObject);
begin
  inherited;
//  MessageDlg('Teste!!', mtInformation, [mbOk], 0);
  if MessageDlg('Deseja EXCLUIR o Cliente: ' + qryClientenome.Value, mtWarning, [mbYes,mbNo], 0) = mrNo then
    Abort;

  try
    qryCliente.Delete;
    MessageDlg('Cliente EXCLUÍDO com sucesso!!', mtInformation, [mbOk], 0);
  except
  MessageDlg('Não foi possível EXCLUIR cliente!!', mtInformation, [mbOk], 0);
  end;

end;

end.
