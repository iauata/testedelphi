unit uFrmAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmAcesso = class(TForm)
    btnAcessar: TSpeedButton;
    btnSair: TSpeedButton;
    Label1: TLabel;
    ted_User: TEdit;
    Label2: TLabel;
    ted_Pass: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ted_UserChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bOk : boolean;
  end;

var
  FrmAcesso: TFrmAcesso;

implementation
uses uDmConexao;
{$R *.dfm}

procedure TFrmAcesso.FormCreate(Sender: TObject);
begin
  bOk := false;
end;

procedure TFrmAcesso.btnAcessarClick(Sender: TObject);
begin

  with DmConexao do
  begin

    qryAcesso.Close;
    qryAcesso.ParamByName('pLogin').Value := ted_User.Text;
    qryAcesso.ParamByName('pSenha').Value := ted_Pass.Text;
    qryAcesso.Open;

    //Verificando se login está correto
    if (qryAcesso.RecordCount > 0) and (Not qryAcesso.IsEmpty) then
    begin
      self.Close;
      bOk := True;
    end
    else
    begin
      MessageDlg('Senha ou Login incorretos!', mtWarning, [mbOK],0);
      ted_User.SetFocus;
    end;

  end;

end;

procedure TFrmAcesso.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if (Key = #13) then
  begin

    Key := #0;
    if (ted_User.Text <> '') And (ted_Pass.Text <> '') then
      btnAcessar.Click
      else
        Perform(WM_NEXTDLGCTL, 0, 0);
        
  end;

end;

procedure TFrmAcesso.ted_UserChange(Sender: TObject);
begin
  btnAcessar.Enabled := (ted_User.Text <> '') And (ted_Pass.Text <> '');
end;

procedure TFrmAcesso.btnSairClick(Sender: TObject);
begin
  close;
end;

end.
