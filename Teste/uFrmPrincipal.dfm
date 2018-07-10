object FrmPrincipal: TFrmPrincipal
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Aplica'#231#227'o Teste do ITBAM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object StatusBar1: TStatusBar
    Left = 0
    Top = 399
    Width = 912
    Height = 23
    Panels = <
      item
        Text = 'Usu'#225'rio:'
        Width = 200
      end
      item
        Text = 'Vers'#227'o: '
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    Left = 88
    Top = 64
    object miCadastro: TMenuItem
      Caption = '&Cadastros'
      object miCliente: TMenuItem
        Action = actCliente
        Caption = '&Clientes'
      end
      object miProduto: TMenuItem
        Caption = '&Produtos'
        OnClick = miProdutoClick
      end
      object miUsuario: TMenuItem
        Caption = '&Usu'#225'rios'
      end
    end
    object miLancamentos: TMenuItem
      Caption = '&Lan'#231'amentos'
      object miVendas: TMenuItem
        Action = actVendas
      end
    end
    object miRelatorios: TMenuItem
      Caption = '&Relat'#243'rios'
    end
    object miSair: TMenuItem
      Action = actSair
    end
  end
  object ActionManager1: TActionManager
    Left = 328
    Top = 64
    StyleName = 'XP Style'
    object actCliente: TAction
      Category = 'Cadastros'
      Caption = '&Cliente'
      OnExecute = actClienteExecute
    end
    object actProdutos: TAction
      Category = 'Cadastros'
      Caption = '&Produtos'
    end
    object actUsuarios: TAction
      Category = 'Cadastros'
      Caption = '&Usu'#225'rios'
    end
    object actSair: TAction
      Caption = '&Sair'
      OnExecute = actSairExecute
    end
    object actVendas: TAction
      Category = 'Movimento'
      Caption = '&Vendas'
      OnExecute = actVendasExecute
    end
  end
end
