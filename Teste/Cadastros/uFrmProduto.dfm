inherited FrmProduto: TFrmProduto
  Left = 261
  Top = 158
  VertScrollBar.Range = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
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
      ActivePage = tbsDados
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
                FieldName = 'id_produto'
                Title.Alignment = taCenter
                Title.Caption = 'C'#211'DIGO'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ds_produto'
                Title.Alignment = taCenter
                Title.Caption = 'DESCRI'#199#195'O'
                Width = 353
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'preco_custo'
                Title.Alignment = taCenter
                Title.Caption = 'Pre'#231'o Custo'
                Width = 98
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'preco_venda'
                Title.Alignment = taCenter
                Title.Caption = 'Pre'#231'o Venda'
                Width = 98
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unidade'
                Title.Alignment = taCenter
                Title.Caption = 'Und.'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd_estoque'
                Title.Alignment = taCenter
                Title.Caption = 'Estoque'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'status'
                Title.Alignment = taCenter
                Title.Caption = 'Status'
                Visible = True
              end>
          end
        end
        inherited Panel2: TPanel
          Font.Height = -13
          ParentFont = False
          object Label1: TLabel
            Left = 16
            Top = 14
            Width = 72
            Height = 16
            Alignment = taRightJustify
            Caption = 'Descricao'
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
          Caption = ''
          Font.Color = clBlack
          Font.Height = -13
          ParentFont = False
          object Label2: TLabel
            Left = 49
            Top = 36
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
          object Label4: TLabel
            Left = 31
            Top = 140
            Width = 69
            Height = 16
            Alignment = taRightJustify
            Caption = 'Categoria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCpfCnpj: TLabel
            Left = 28
            Top = 92
            Width = 72
            Height = 16
            Alignment = taRightJustify
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 420
            Top = 36
            Width = 64
            Height = 16
            Alignment = taRightJustify
            Caption = 'Cadastro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 680
            Top = 92
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Caption = 'Unidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 696
            Top = 36
            Width = 44
            Height = 16
            Alignment = taRightJustify
            Caption = 'Status'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 15
            Top = 188
            Width = 85
            Height = 16
            Alignment = taRightJustify
            Caption = 'Pre'#231'o Custo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 9
            Top = 236
            Width = 91
            Height = 16
            Alignment = taRightJustify
            Caption = 'Pre'#231'o Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 42
            Top = 292
            Width = 58
            Height = 16
            Alignment = taRightJustify
            Caption = 'Estoque'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbeID: TDBEdit
            Left = 104
            Top = 32
            Width = 137
            Height = 24
            DataField = 'id_produto'
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
          object dblcCategorias: TDBLookupComboBox
            Left = 104
            Top = 136
            Width = 289
            Height = 24
            DataField = 'id_categoria'
            DataSource = dsPadrao
            KeyField = 'id_categoria'
            ListField = 'ds_categoria'
            ListSource = dsCategorias
            TabOrder = 5
          end
          object dbeDescricao: TDBEdit
            Left = 104
            Top = 88
            Width = 537
            Height = 24
            CharCase = ecUpperCase
            DataField = 'ds_produto'
            DataSource = dsPadrao
            TabOrder = 3
          end
          object dbeDataCadastro: TDBEdit
            Left = 488
            Top = 32
            Width = 153
            Height = 24
            DataField = 'dthr_cadastro'
            DataSource = dsPadrao
            Enabled = False
            TabOrder = 1
          end
          object dbePCusto: TDBEdit
            Left = 104
            Top = 184
            Width = 137
            Height = 24
            DataField = 'preco_custo'
            DataSource = dsPadrao
            TabOrder = 6
          end
          object dbePVenda: TDBEdit
            Left = 104
            Top = 232
            Width = 137
            Height = 24
            DataField = 'preco_venda'
            DataSource = dsPadrao
            TabOrder = 7
          end
          object dbeUnd: TDBEdit
            Left = 744
            Top = 88
            Width = 137
            Height = 24
            CharCase = ecUpperCase
            DataField = 'unidade'
            DataSource = dsPadrao
            TabOrder = 4
          end
          object dbeEstoque: TDBEdit
            Left = 104
            Top = 288
            Width = 137
            Height = 24
            DataField = 'qtd_estoque'
            DataSource = dsPadrao
            TabOrder = 8
          end
          object dblcStatus: TDBLookupComboBox
            Left = 744
            Top = 32
            Width = 137
            Height = 24
            DataField = 'status'
            DataSource = dsPadrao
            KeyField = 'idstatus'
            ListField = 'dsstatus'
            ListSource = dsStatus
            TabOrder = 2
          end
        end
      end
    end
  end
  object qryProduto: TZQuery [2]
    Connection = DmConexao.zConDB
    SortedFields = 'ds_produto'
    AfterInsert = qryProdutoAfterInsert
    BeforePost = qryProdutoBeforePost
    SQL.Strings = (
      'select *'
      '  from testedb.tab_produtos'
      ' where ds_produto like :spesquisa'
      ' order by ds_produto')
    Params = <
      item
        DataType = ftString
        Name = 'spesquisa'
        ParamType = ptInput
      end>
    IndexFieldNames = 'ds_produto Asc'
    Left = 773
    Top = 314
    ParamData = <
      item
        DataType = ftString
        Name = 'spesquisa'
        ParamType = ptInput
      end>
    object qryProdutoid_produto: TIntegerField
      FieldName = 'id_produto'
      Required = True
    end
    object qryProdutods_produto: TStringField
      FieldName = 'ds_produto'
      Required = True
      Size = 45
    end
    object qryProdutodthr_cadastro: TDateTimeField
      FieldName = 'dthr_cadastro'
      Required = True
    end
    object qryProdutousu_cadastro: TLargeintField
      FieldName = 'usu_cadastro'
      Required = True
    end
    object qryProdutopreco_custo: TFloatField
      FieldName = 'preco_custo'
      Required = True
      currency = True
    end
    object qryProdutopreco_venda: TFloatField
      FieldName = 'preco_venda'
      Required = True
      currency = True
    end
    object qryProdutounidade: TStringField
      FieldName = 'unidade'
      Size = 25
    end
    object qryProdutoid_categoria: TLargeintField
      FieldName = 'id_categoria'
      Required = True
    end
    object qryProdutostatus: TSmallintField
      FieldName = 'status'
      Required = True
    end
    object qryProdutoqtd_estoque: TFloatField
      FieldName = 'qtd_estoque'
      Required = True
    end
  end
  object dsStatus: TDataSource [3]
    DataSet = cdsStatus
    Left = 805
    Top = 358
  end
  inherited dsPadrao: TDataSource
    DataSet = qryProduto
    Left = 805
    Top = 319
  end
  object cdsStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 773
    Top = 358
    object cdsStatusidstatus: TIntegerField
      FieldName = 'idstatus'
    end
    object cdsStatusdsstatus: TStringField
      FieldName = 'dsstatus'
      Size = 15
    end
  end
  object qryCategorias: TZQuery
    Connection = DmConexao.zConDB
    SQL.Strings = (
      'select *'
      '  from testedb.tab_categorias'
      ' order by ds_categoria')
    Params = <>
    Left = 773
    Top = 399
    object qryCategoriasid_categoria: TLargeintField
      FieldName = 'id_categoria'
      Required = True
    end
    object qryCategoriasds_categoria: TStringField
      FieldName = 'ds_categoria'
      Required = True
      Size = 45
    end
  end
  object dsCategorias: TDataSource
    DataSet = qryCategorias
    Left = 805
    Top = 399
  end
end
