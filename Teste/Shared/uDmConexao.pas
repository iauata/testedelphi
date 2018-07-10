unit uDmConexao;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDmConexao = class(TDataModule)
    zConDB: TZConnection;
    qryAcesso: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConexao: TDmConexao;

implementation

{$R *.dfm}

procedure TDmConexao.DataModuleCreate(Sender: TObject);
begin
  zConDB.Disconnect;
  zConDB.Connect;
end;

end.
