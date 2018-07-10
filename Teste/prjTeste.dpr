program prjTeste;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmAcesso in 'uFrmAcesso.pas' {FrmAcesso},
  uFuncoes in 'Shared\uFuncoes.pas',
  uFrmPadrao in 'Shared\uFrmPadrao.pas' {FrmPadrao},
  uFrmProduto in 'Cadastros\uFrmProduto.pas' {FrmProduto},
  uDmConexao in 'Shared\uDmConexao.pas' {DmConexao: TDataModule},
  uFrmCliente in 'Cadastros\uFrmCliente.pas' {FrmCliente},
  uFrmCadVendas in 'Cadastros\uFrmCadVendas.pas' {FrmCadVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDmConexao, DmConexao);
  FrmAcesso := TFrmAcesso.Create(Application);
  FrmAcesso.ShowModal;
  if FrmAcesso.bOk then
    Application.CreateForm(TFrmPrincipal, FrmPrincipal)
    else
      Application.Terminate;

  Application.Run;
  
end.
