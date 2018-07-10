unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, XPStyleActnCtrls, ActnMan, ComCtrls;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    miCadastro: TMenuItem;
    miCliente: TMenuItem;
    miProduto: TMenuItem;
    miUsuario: TMenuItem;
    miRelatorios: TMenuItem;
    miSair: TMenuItem;
    ActionManager1: TActionManager;
    actCliente: TAction;
    actProdutos: TAction;
    actUsuarios: TAction;
    actSair: TAction;
    StatusBar1: TStatusBar;
    miLancamentos: TMenuItem;
    miVendas: TMenuItem;
    actVendas: TAction;
    procedure actSairExecute(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure miProdutoClick(Sender: TObject);
    procedure actVendasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses uDmConexao, uFrmCliente, DB, uFuncoes, uFrmProduto, uFrmCadVendas;

{$R *.dfm}

procedure TFrmPrincipal.actSairExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.actClienteExecute(Sender: TObject);
begin

  if FrmCliente = Nil then
  begin
    FrmCliente := TFrmCLiente.Create(Self);
    FrmCliente.ShowModal;
    FreeAndNil(FrmCliente);
  end;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  FrmPrincipal.StatusBar1.Panels[0].Text := 'Usuário: ' + DmConexao.qryAcesso.FieldByName('usu_login').Value;
  FrmPrincipal.StatusBar1.Panels[1].Text := 'Versão : ' + VersaoExeStr;
end;

procedure TFrmPrincipal.miProdutoClick(Sender: TObject);
begin
  if FrmProduto = Nil then
  begin
    FrmProduto := TFrmProduto.Create(Self);
    FrmProduto.ShowModal;
    FreeAndNil(FrmProduto);
  end;
end;

procedure TFrmPrincipal.actVendasExecute(Sender: TObject);
begin
  if FrmCadVendas = Nil then
  begin
    FrmCadVendas := TFrmCadVendas.Create(Self);
    FrmCadVendas.ShowModal;
    FreeAndNil(FrmCadVendas);
  end;
end;

end.
