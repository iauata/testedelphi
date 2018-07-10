inherited FrmCliente: TFrmCliente
  Left = 261
  Top = 158
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 503
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopBar: TPanel
    inherited ToolBar1: TToolBar
      inherited sbnNovo: TSpeedButton
        Caption = '&Novo'
      end
      inherited sbnAlterar: TSpeedButton
        Caption = '&Alterar'
      end
      inherited sbnSalvar: TSpeedButton
        Caption = '&Salvar'
      end
      inherited sbnCancelar: TSpeedButton
        Caption = '&Cancelar'
      end
      inherited sbnExcluir: TSpeedButton
        Caption = '&Excluir'
        OnClick = sbnExcluirClick
      end
    end
    inherited Panel3: TPanel
      inherited sbtnSair: TSpeedButton
        Caption = 'Sai&r'
      end
    end
  end
  inherited pnlBody: TPanel
    Height = 450
    inherited pgcPadrao: TPageControl
      Height = 448
      HotTrack = False
      inherited tbsPesquisa: TTabSheet
        inherited Panel1: TPanel
          Height = 379
          inherited dbgPadrao: TDBGrid
            Height = 375
            Font.Height = -13
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TitleFont.Height = -13
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'id_cliente'
                Title.Alignment = taCenter
                Title.Caption = 'C'#211'DIGO'
                Width = 105
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome'
                Title.Alignment = taCenter
                Title.Caption = 'NOME'
                Width = 491
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tipo_cliente'
                Title.Alignment = taCenter
                Title.Caption = 'TIPO'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cpfcnpj'
                Title.Alignment = taCenter
                Title.Caption = 'CPF/CNPJ'
                Width = 208
                Visible = True
              end>
          end
        end
        inherited Panel2: TPanel
          Font.Height = -13
          ParentFont = False
          object Label1: TLabel
            Left = 46
            Top = 14
            Width = 42
            Height = 16
            Alignment = taRightJustify
            Caption = 'Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnPesquisar: TSpeedButton
            Left = 752
            Top = 6
            Width = 129
            Height = 30
            Caption = '&Pesquisar'
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
            OnClick = btnPesquisarClick
          end
          object edpesquisa: TEdit
            Left = 96
            Top = 10
            Width = 641
            Height = 24
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = edpesquisaEnter
            OnKeyDown = edpesquisaKeyDown
          end
        end
      end
      inherited tbsDados: TTabSheet
        inherited Panel4: TPanel
          Height = 420
          Font.Color = clBlack
          Font.Height = -13
          ParentFont = False
          object Label2: TLabel
            Left = 25
            Top = 20
            Width = 51
            Height = 16
            Alignment = taRightJustify
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 35
            Top = 100
            Width = 42
            Height = 16
            Alignment = taRightJustify
            Caption = 'Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 22
            Top = 60
            Width = 54
            Height = 16
            Alignment = taRightJustify
            Caption = 'Pessoa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCpfCnpj: TLabel
            Left = 430
            Top = 60
            Width = 30
            Height = 16
            Alignment = taRightJustify
            Caption = 'CPF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblDataNC: TLabel
            Left = 654
            Top = 100
            Width = 78
            Height = 16
            Alignment = taRightJustify
            Caption = 'Data Nasc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 359
            Top = 20
            Width = 101
            Height = 16
            Alignment = taRightJustify
            Caption = 'Data Cadastro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeID: TDBEdit
            Left = 80
            Top = 16
            Width = 153
            Height = 24
            DataField = 'id_cliente'
            DataSource = dsPadrao
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object dbeNome: TDBEdit
            Left = 80
            Top = 96
            Width = 561
            Height = 24
            CharCase = ecUpperCase
            DataField = 'nome'
            DataSource = dsPadrao
            TabOrder = 4
          end
          object dblcbTipo: TDBLookupComboBox
            Left = 80
            Top = 56
            Width = 153
            Height = 24
            DataField = 'tipo_cliente'
            DataSource = dsPadrao
            KeyField = 'idPessoa'
            ListField = 'dsPessoa'
            ListSource = dsTipoPessoa
            TabOrder = 2
          end
          object dbeCpfCnpj: TDBEdit
            Left = 464
            Top = 56
            Width = 177
            Height = 24
            DataField = 'cpfcnpj'
            DataSource = dsPadrao
            TabOrder = 3
          end
          object dbeDataNasc: TDBEdit
            Left = 736
            Top = 96
            Width = 153
            Height = 24
            DataField = 'data_nasc'
            DataSource = dsPadrao
            TabOrder = 5
          end
          object grbInfoContato: TGroupBox
            Left = 16
            Top = 144
            Width = 873
            Height = 257
            Caption = 'Informa'#231#245'es de Contato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            object Label7: TLabel
              Left = 15
              Top = 44
              Width = 68
              Height = 16
              Alignment = taRightJustify
              Caption = 'Endere'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 641
              Top = 44
              Width = 55
              Height = 16
              Alignment = taRightJustify
              Caption = 'N'#250'mero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 40
              Top = 148
              Width = 43
              Height = 16
              Alignment = taRightJustify
              Caption = 'Bairro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 464
              Top = 148
              Width = 51
              Height = 16
              Alignment = taRightJustify
              Caption = 'Cidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 33
              Top = 204
              Width = 50
              Height = 16
              Alignment = taRightJustify
              Caption = 'Estado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 670
              Top = 92
              Width = 29
              Height = 16
              Alignment = taRightJustify
              Caption = 'Cep'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 13
              Top = 92
              Width = 70
              Height = 16
              Alignment = taRightJustify
              Caption = 'Complem.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 425
              Top = 204
              Width = 90
              Height = 16
              Alignment = taRightJustify
              Caption = 'Fone/Celular'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dbeEndereco: TDBEdit
              Left = 88
              Top = 40
              Width = 521
              Height = 24
              CharCase = ecUpperCase
              DataField = 'endereco'
              DataSource = dsPadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object dbeNumero: TDBEdit
              Left = 704
              Top = 40
              Width = 153
              Height = 24
              DataField = 'numero'
              DataSource = dsPadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object dbeBairro: TDBEdit
              Left = 88
              Top = 144
              Width = 321
              Height = 24
              CharCase = ecUpperCase
              DataField = 'bairro'
              DataSource = dsPadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object dbeCidade: TDBEdit
              Left = 520
              Top = 144
              Width = 337
              Height = 24
              CharCase = ecUpperCase
              DataField = 'cidade'
              DataSource = dsPadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object dbeEstado: TDBEdit
              Left = 88
              Top = 200
              Width = 321
              Height = 24
              CharCase = ecUpperCase
              DataField = 'estado'
              DataSource = dsPadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object dbeCep: TDBEdit
              Left = 704
              Top = 88
              Width = 153
              Height = 24
              DataField = 'cep'
              DataSource = dsPadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object dbeComplemento: TDBEdit
              Left = 88
              Top = 88
              Width = 521
              Height = 24
              CharCase = ecUpperCase
              DataField = 'complemento'
              DataSource = dsPadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object dbeFone1: TDBEdit
              Left = 520
              Top = 200
              Width = 161
              Height = 24
              DataField = 'fone1'
              DataSource = dsPadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object dbeFone2: TDBEdit
              Left = 696
              Top = 200
              Width = 161
              Height = 24
              DataField = 'fone2'
              DataSource = dsPadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
          end
          object dbeDataCadastro: TDBEdit
            Left = 464
            Top = 16
            Width = 177
            Height = 24
            DataField = 'dthr_cadastro'
            DataSource = dsPadrao
            Enabled = False
            TabOrder = 1
          end
        end
      end
    end
  end
  object qryCliente: TZQuery [2]
    Connection = DmConexao.zConDB
    SortedFields = 'nome'
    AfterInsert = qryClienteAfterInsert
    BeforePost = qryClienteBeforePost
    SQL.Strings = (
      'select *'#10
      ''
      ''
      ''
      ''
      ''
      '  from testedb.tab_cliente'
      ''
      'where nome like :spesquisa'
      'order by nome')
    Params = <
      item
        DataType = ftString
        Name = 'spesquisa'
        ParamType = ptInput
      end>
    IndexFieldNames = 'nome Asc'
    Left = 541
    Top = 178
    ParamData = <
      item
        DataType = ftString
        Name = 'spesquisa'
        ParamType = ptInput
      end>
    object qryClienteid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
    end
    object qryClientenome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 100
    end
    object qryClientetipo_cliente: TStringField
      FieldName = 'tipo_cliente'
      Required = True
      OnChange = qryClientetipo_clienteChange
      Size = 1
    end
    object qryClientecpfcnpj: TStringField
      FieldName = 'cpfcnpj'
      Required = True
      Size = 15
    end
    object qryClientedata_nasc: TDateField
      FieldName = 'data_nasc'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qryClienteendereco: TStringField
      FieldName = 'endereco'
      Size = 80
    end
    object qryClientenumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object qryClientebairro: TStringField
      FieldName = 'bairro'
      Size = 45
    end
    object qryClientecidade: TStringField
      FieldName = 'cidade'
      Size = 45
    end
    object qryClienteestado: TStringField
      FieldName = 'estado'
      Size = 45
    end
    object qryClientecep: TStringField
      FieldName = 'cep'
      EditMask = '00000\-000;1;_'
      Size = 10
    end
    object qryClientecomplemento: TStringField
      FieldName = 'complemento'
      Size = 45
    end
    object qryClienteusu_cadastro: TLargeintField
      FieldName = 'usu_cadastro'
      Required = True
    end
    object qryClientedthr_cadastro: TDateTimeField
      FieldName = 'dthr_cadastro'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object qryClientefone1: TStringField
      FieldName = 'fone1'
      ReadOnly = True
      EditMask = '!\(00\)0000-0000;1;_'
      Size = 15
    end
    object qryClientefone2: TStringField
      FieldName = 'fone2'
      ReadOnly = True
      EditMask = '!\(00\)00000-0000;1;_'
      Size = 15
    end
  end
  object cdsTipoPessoa: TClientDataSet [3]
    Aggregates = <>
    Params = <>
    Left = 333
    Top = 110
    object cdsTipoPessoaidPessoa: TStringField
      FieldName = 'idPessoa'
      Size = 1
    end
    object cdsTipoPessoadsPessoa: TStringField
      FieldName = 'dsPessoa'
    end
  end
  object dsTipoPessoa: TDataSource [4]
    DataSet = cdsTipoPessoa
    Left = 365
    Top = 110
  end
  inherited dsPadrao: TDataSource
    DataSet = qryCliente
  end
end
