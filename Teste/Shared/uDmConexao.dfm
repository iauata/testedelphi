object DmConexao: TDmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 620
  Top = 193
  Height = 236
  Width = 485
  object zConDB: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'testedb'
    User = 'usuteste'
    Password = 'teste123'
    Protocol = 'MariaDB-10'
    LibraryLocation = '\Teste_ITBAM\Teste\libmysql.dll'
    Left = 24
    Top = 16
  end
  object qryAcesso: TZQuery
    Connection = zConDB
    SQL.Strings = (
      'SELECT usu_id, usu_nome, usu_login'
      '  FROM tab_usuario'
      ' WHERE usu_login = :pLogin'
      '   AND usu_senha = fct_crypt_str(:pSenha)')
    Params = <
      item
        DataType = ftString
        Name = 'pLogin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pSenha'
        ParamType = ptInput
      end>
    Left = 96
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'pLogin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pSenha'
        ParamType = ptInput
      end>
  end
end
