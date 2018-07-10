object FrmCadVendas: TFrmCadVendas
  Left = 191
  Top = 106
  Width = 1016
  Height = 556
  Caption = 'Venda ao Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook1: TNotebook
    Left = 0
    Top = 0
    Width = 1000
    Height = 518
    Align = alClient
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Lista_Vendas'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 518
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object pnlCaption: TPanel
          Left = 1
          Top = 1
          Width = 998
          Height = 48
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = 'LISTAGEM DE VENDAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object pnlOpcoes: TPanel
          Left = 1
          Top = 468
          Width = 998
          Height = 49
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          DesignSize = (
            998
            49)
          object SpeedButton1: TSpeedButton
            Left = 894
            Top = 5
            Width = 97
            Height = 39
            Anchors = [akTop, akRight]
            Caption = '&Fechar'
            OnClick = SpeedButton1Click
          end
          object SpeedButton3: TSpeedButton
            Left = 5
            Top = 5
            Width = 97
            Height = 39
            Caption = '&Nova'
          end
          object SpeedButton2: TSpeedButton
            Left = 109
            Top = 5
            Width = 97
            Height = 39
            Caption = '&Alterar'
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 49
          Width = 998
          Height = 41
          Align = alTop
          TabOrder = 2
          object Label1: TLabel
            Left = 16
            Top = 12
            Width = 56
            Height = 16
            Caption = 'Per'#237'odo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 180
            Top = 12
            Width = 10
            Height = 16
            Caption = 'a'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 304
            Top = 12
            Width = 49
            Height = 16
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnPesquisar: TSpeedButton
            Left = 920
            Top = 6
            Width = 65
            Height = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              D6010000424DD601000000000000760000002800000019000000160000000100
              0400000000006001000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00EEEEEEEEEEEE
              EEEEEEEE000EE0000000EEEEEEEEEEEEEEEEEEE0B3B0E0000000EEEEEEEEEEEE
              EEEEEE0B3B3B00000000EEEEEEEEEEEEEEEEE003B3B300000000EEEEEEEEEEEE
              EEEE0B0B3B3B00000000EEEE0000000EEEE0BFB0B3B0E0000000EEE0F7F77770
              000BFBBB0000E0000000EE0F7F77777F780FBBBB0EEEE0000000E0F0000007F7
              F0FBBB00EEEEE0000000E00F7F7F700F70BB00EEEEEEE00000000FF7F7F7F7F0
              0F00F0EEEEEEE00000000FF07F7F7F7F70FFFF0EEEEEE00000000FF8F7F7F7F7
              F70FFF0EEEEEE00000000FFF8FFF7F7F7F70FFF0EEEEE0000000E0FFF8FFF7F7
              F7F70FF0EEEEE0000000E0FFFF8F7F7F7F7F0FF0EEEEE0000000EE0FFFF887F7
              F7F7F0F0EEEEE0000000EE00FFFFF00F7F7F70F0EEEEE0000000EEE00FFFFFF0
              0000FF0EEEEEE0000000EEEEE00FFFFFFFFFF0EEEEEEE0000000EEEEEEE00FFF
              FFFF0EEEEEEEE0000000EEEEEEEEE0000000EEEEEEEEE0000000}
            ParentFont = False
          end
          object mkeDataIni: TMaskEdit
            Left = 80
            Top = 8
            Width = 89
            Height = 24
            EditMask = '!99/99/0000;1;_'
            MaxLength = 10
            TabOrder = 0
            Text = '  /  /    '
          end
          object mkeDataFin: TMaskEdit
            Left = 200
            Top = 8
            Width = 89
            Height = 24
            EditMask = '!99/99/0000;1;_'
            MaxLength = 10
            TabOrder = 1
            Text = '  /  /    '
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 360
            Top = 8
            Width = 553
            Height = 24
            KeyField = 'id_cliente'
            ListField = 'nome'
            ListSource = dsLkpClientes
            TabOrder = 2
          end
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 90
          Width = 998
          Height = 378
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Venda'
    end
  end
  object qryClientes: TZQuery
    Connection = DmConexao.zConDB
    SQL.Strings = (
      'SELECT a.id_cliente'
      '     , a.nome'
      '  FROM testedb.tab_cliente a'
      ' ORDER BY a.nome;')
    Params = <>
    Left = 656
    Top = 128
  end
  object dsLkpClientes: TDataSource
    DataSet = qryClientes
    Left = 696
    Top = 128
  end
end
