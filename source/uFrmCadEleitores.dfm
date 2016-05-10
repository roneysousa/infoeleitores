inherited frmCadEleitores: TfrmCadEleitores
  Left = 210
  Top = 119
  Caption = 'Cadastro de Eleitores'
  ClientHeight = 499
  ClientWidth = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 650
    Height = 480
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        DataField = 'ELE_CODIGO'
        DataSource = deEleitores
      end
      object Label2: TLabel [2]
        Left = 12
        Top = 56
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = dbeDescricao
      end
      object Label3: TLabel [3]
        Left = 12
        Top = 96
        Width = 20
        Height = 13
        Caption = 'CPF'
        FocusControl = dbeCPF
      end
      object Label4: TLabel [4]
        Left = 160
        Top = 96
        Width = 65
        Height = 13
        Caption = 'N'#186'.Identidade'
        FocusControl = DBEdit2
      end
      object Label5: TLabel [5]
        Left = 12
        Top = 136
        Width = 76
        Height = 13
        Caption = 'N'#186'. Titulo Eleitor'
        FocusControl = DBEdit3
      end
      object Label6: TLabel [6]
        Left = 160
        Top = 136
        Width = 43
        Height = 13
        Caption = 'N'#186'. Zona'
        FocusControl = DBEdit4
      end
      object Label7: TLabel [7]
        Left = 322
        Top = 136
        Width = 49
        Height = 13
        Caption = 'N'#186'. Se'#231#227'o'
        FocusControl = DBEdit5
      end
      object Label8: TLabel [8]
        Left = 322
        Top = 96
        Width = 82
        Height = 13
        Caption = 'Data Nascimento'
      end
      object Label9: TLabel [9]
        Left = 12
        Top = 174
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
        FocusControl = dbeEndereco
      end
      object Label10: TLabel [10]
        Left = 466
        Top = 174
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit7
      end
      object Label11: TLabel [11]
        Left = 12
        Top = 212
        Width = 64
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit8
      end
      object Label12: TLabel [12]
        Left = 285
        Top = 212
        Width = 27
        Height = 13
        Caption = 'Bairro'
        FocusControl = dbeBairro
      end
      object Label13: TLabel [13]
        Left = 12
        Top = 252
        Width = 36
        Height = 13
        Caption = 'N'#186'.CEP'
        FocusControl = DBEdit10
      end
      object Label14: TLabel [14]
        Left = 125
        Top = 252
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit11
      end
      object Label15: TLabel [15]
        Left = 471
        Top = 252
        Width = 14
        Height = 13
        Caption = 'UF'
      end
      object Label16: TLabel [16]
        Left = 12
        Top = 289
        Width = 80
        Height = 13
        Caption = 'Fone Resid'#234'ncia'
        FocusControl = DBEdit1
      end
      object Label17: TLabel [17]
        Left = 160
        Top = 289
        Width = 32
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit6
      end
      object Label18: TLabel [18]
        Left = 12
        Top = 328
        Width = 83
        Height = 13
        Caption = 'Nome do Contato'
        FocusControl = DBEdit9
      end
      object Label19: TLabel [19]
        Left = 406
        Top = 328
        Width = 24
        Height = 13
        Caption = 'Fone'
        FocusControl = DBEdit12
      end
      object Label20: TLabel [20]
        Left = 12
        Top = 368
        Width = 83
        Height = 13
        Caption = 'Nome do Contato'
        FocusControl = DBEdit13
      end
      object Label21: TLabel [21]
        Left = 406
        Top = 368
        Width = 24
        Height = 13
        Caption = 'Fone'
        FocusControl = DBEdit14
      end
      inherited pnlBotoes: TPanel
        Top = 411
        Width = 642
        inherited BtSair: TBitBtn
          Left = 558
        end
      end
      object dbeDescricao: TDBEdit
        Left = 12
        Top = 72
        Width = 533
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ELE_NOME'
        DataSource = deEleitores
        TabOrder = 1
      end
      object dbeCPF: TDBEdit
        Left = 12
        Top = 112
        Width = 134
        Height = 21
        DataField = 'ELE_CPF'
        DataSource = deEleitores
        TabOrder = 2
        OnExit = dbeCPFExit
        OnKeyPress = dbeCPFKeyPress
      end
      object DBEdit2: TDBEdit
        Left = 160
        Top = 112
        Width = 147
        Height = 21
        DataField = 'ELE_NRIDENTIDADE'
        DataSource = deEleitores
        TabOrder = 3
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 12
        Top = 152
        Width = 134
        Height = 21
        DataField = 'ELE_TITULO'
        DataSource = deEleitores
        TabOrder = 5
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 160
        Top = 152
        Width = 147
        Height = 21
        DataField = 'ELE_ZONA'
        DataSource = deEleitores
        TabOrder = 6
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 322
        Top = 152
        Width = 121
        Height = 21
        DataField = 'ELE_SECAO'
        DataSource = deEleitores
        TabOrder = 7
        OnKeyPress = DBEdit5KeyPress
      end
      object dbeDataNasc: TDBDateEdit
        Left = 322
        Top = 112
        Width = 121
        Height = 21
        DataField = 'ELE_DTNASCIMENTO'
        DataSource = deEleitores
        NumGlyphs = 2
        TabOrder = 4
        OnExit = dbeDataNascExit
      end
      object dbeEndereco: TDBEdit
        Left = 12
        Top = 190
        Width = 450
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ELE_ENDERECO'
        DataSource = deEleitores
        TabOrder = 8
      end
      object DBEdit7: TDBEdit
        Left = 466
        Top = 190
        Width = 75
        Height = 21
        DataField = 'ELE_NUMERO'
        DataSource = deEleitores
        MaxLength = 5
        TabOrder = 9
        OnKeyPress = DBEdit7KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 12
        Top = 228
        Width = 266
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ELE_COMPLEMENTO'
        DataSource = deEleitores
        TabOrder = 10
      end
      object dbeBairro: TDBEdit
        Left = 285
        Top = 228
        Width = 257
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ELE_BAIRRO'
        DataSource = deEleitores
        TabOrder = 11
      end
      object DBEdit10: TDBEdit
        Left = 12
        Top = 268
        Width = 108
        Height = 21
        DataField = 'ELE_CEP'
        DataSource = deEleitores
        TabOrder = 12
      end
      object DBEdit11: TDBEdit
        Left = 125
        Top = 268
        Width = 337
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ELE_CIDADE'
        DataSource = deEleitores
        TabOrder = 13
      end
      object cmbUF: TDBComboBox
        Left = 471
        Top = 268
        Width = 69
        Height = 22
        Style = csOwnerDrawFixed
        CharCase = ecUpperCase
        DataField = 'ELE_UF'
        DataSource = deEleitores
        ItemHeight = 16
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PE'
          'PR'
          'PI'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
        TabOrder = 14
      end
      object DBEdit1: TDBEdit
        Left = 12
        Top = 304
        Width = 134
        Height = 21
        DataField = 'ELE_NRFONE'
        DataSource = deEleitores
        TabOrder = 15
      end
      object DBEdit6: TDBEdit
        Left = 160
        Top = 304
        Width = 134
        Height = 21
        DataField = 'ELE_NRCELULAR'
        DataSource = deEleitores
        TabOrder = 16
      end
      object DBEdit9: TDBEdit
        Left = 12
        Top = 344
        Width = 385
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ELE_NMCONT1'
        DataSource = deEleitores
        TabOrder = 17
      end
      object DBEdit12: TDBEdit
        Left = 406
        Top = 344
        Width = 134
        Height = 21
        DataField = 'ELE_FONE_CONT1'
        DataSource = deEleitores
        TabOrder = 18
      end
      object DBEdit13: TDBEdit
        Left = 12
        Top = 384
        Width = 385
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ELE_NMCONT2'
        DataSource = deEleitores
        TabOrder = 19
      end
      object DBEdit14: TDBEdit
        Left = 406
        Top = 384
        Width = 134
        Height = 21
        DataField = 'ELE_FONE_CONT2'
        DataSource = deEleitores
        TabOrder = 20
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        Width = 642
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Left = 608
        Height = 379
      end
      inherited grdConsultar: TDBGrid
        Width = 608
        Height = 379
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ELE_CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ELE_NOME'
            Title.Caption = 'Nome'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 264
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ELE_NRFONE'
            Title.Caption = 'Telefone'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ELE_ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Pedidos'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Label23: TLabel
        Left = 149
        Top = 22
        Width = 32
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBEdit16
        Transparent = True
      end
      object Label24: TLabel
        Left = 24
        Top = 72
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = dbeDescricaoPedido
        Transparent = True
      end
      object Label25: TLabel
        Left = 24
        Top = 112
        Width = 59
        Height = 13
        Caption = 'Data Pedido'
        Transparent = True
      end
      object Label26: TLabel
        Left = 24
        Top = 152
        Width = 85
        Height = 13
        Caption = 'Data Atendimento'
        Transparent = True
      end
      object Label22: TLabel
        Left = 24
        Top = 23
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 24
        Top = 38
        Width = 80
        Height = 22
        AutoSize = True
        Color = clBtnFace
        DataField = 'PED_CODIGO'
        DataSource = dsPedidos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 411
        Width = 642
        Height = 41
        Align = alBottom
        Color = clNavy
        TabOrder = 4
        object btnNovo: TBitBtn
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Incluir novo registro'
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = btnNovoClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
            0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
            1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
            0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
            111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
        object btnEditar: TBitBtn
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Alterar registro'
          Caption = '&Alterar'
          TabOrder = 1
          OnClick = btnEditarClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E0E0E0E0E0E0B08031B1B0A0E1818181818181818181809041B1B0E0E181B1B
            1B1B1B1B1B1B180A051B1B0E0E0E181B1B1B1B1B1B180B0A061B1B0E0E0E0E18
            1B1B1B1B180B0A0A061B1B0E10100E0E181B1B180E0B0A0A061B1B0E1313100E
            0E18180E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
            11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
        object btnDelete: TBitBtn
          Left = 168
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Excluir registro'
          Caption = '&Excluir'
          TabOrder = 2
          OnClick = btnDeleteClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E0000000100000001000031319C003131
            A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
            E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
            FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
            FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
            1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
            0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
            0E0E0E0E0E0E0B08031B1B0A0E0E0E0E0E0E0E0E0E0E0E09041B1B0E0E0E0E0E
            0E0E0E0E0E0E0E0A051B1B0E0E1818181818181818180B0A061B1B0E0E1B1B1B
            1B1B1B1B1B1B0A0A061B1B0E10100E0E0E0E0E0E0E0B0A0A061B1B0E1313100E
            0E0E0E0E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
            11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
            0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
        end
        object btnSalvar: TBitBtn
          Left = 286
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Gravar dados'
          Caption = '&Gravar'
          Enabled = False
          TabOrder = 3
          OnClick = btnSalvarClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
            840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
            C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
            F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
            FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
            1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
            0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F0F0F
            1D111111110E0A08031F1F0A0E11131D1F1D1111110E0B09041F1F0C11131D1F
            1D1F1D11110E0B0A051F1F0E131D1F1D11111F1D0F0C0A0A061F1F0F13131D11
            1111111F1D0B0A0A061F1F131515131311100F0F1F1D0A0A061F1F1318181514
            13130F0E0C1F1D0A061F1F151A1916151514110F0E0C1F0A061F1F181C1A1817
            16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
            1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
        end
        object btnCancelar: TBitBtn
          Left = 367
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Cancelar'
          Caption = '&Cancelar'
          Enabled = False
          TabOrder = 4
          OnClick = btnCancelarClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
            840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
            C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
            F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
            FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
            1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
            0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F1F1D
            111111111D1F0A08031F1F0A0E11131F1D11111D1F0E0B09041F1F0C11131111
            1F1D1D1F110E0B0A051F1F0E13111111111F1D110F0C0A0A061F1F0F13131111
            1D1F1F1D0E0B0A0A061F1F131515131D1F100F1F1D0A0A0A061F1F1318181D1F
            13130F0E1F1D0A0A061F1F151A191F151514110F0E1F0A0A061F1F181C1A1817
            16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
            1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
        end
      end
      object DBEdit16: TDBEdit
        Left = 149
        Top = 38
        Width = 444
        Height = 21
        CharCase = ecUpperCase
        Color = clSilver
        DataField = 'ELE_NOME'
        DataSource = deEleitores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dbeDescricaoPedido: TDBEdit
        Left = 24
        Top = 88
        Width = 567
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PED_DESCRICAO'
        DataSource = dsPedidos
        TabOrder = 0
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 24
        Top = 196
        Width = 185
        Height = 35
        Caption = '[ Situa'#231#227'o ]'
        Columns = 2
        DataField = 'PED_SITUACAO'
        DataSource = dsPedidos
        Items.Strings = (
          '&Sim'
          '&N'#227'o')
        TabOrder = 3
        Values.Strings = (
          'S'
          'N')
      end
      object dbeDtPedido: TDBDateEdit
        Left = 23
        Top = 128
        Width = 121
        Height = 21
        DataField = 'PED_DTPEDIDO'
        DataSource = dsPedidos
        NumGlyphs = 2
        TabOrder = 1
        OnExit = dbeDtPedidoExit
      end
      object dbeDtAtendimento: TDBDateEdit
        Left = 23
        Top = 168
        Width = 121
        Height = 21
        DataField = 'PED_DTATENDIMENTO'
        DataSource = dsPedidos
        NumGlyphs = 2
        TabOrder = 2
        OnExit = dbeDtAtendimentoExit
      end
      object dbGridPedidos: TDBGrid
        Left = 0
        Top = 352
        Width = 642
        Height = 65
        Ctl3D = False
        DataSource = dsPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDblClick = btnConsultarClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PED_CODIGO'
            Title.Caption = 'Pedido'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 264
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PED_DTPEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Pedido'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PED_SITUACAO'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 480
    Width = 650
  end
  inherited dsConsultar: TDataSource
    Left = 228
    Top = 50
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 
      'select ELE_CODIGO, ELE_NOME, ELE_NRFONE, ELE_ENDERECO from ELEIT' +
      'ORES'
    MaxBlobSize = -1
    SQLConnection = DMConn.sqlConn
    Left = 308
    Top = 50
  end
  inherited dspConsultar: TDataSetProvider
    Left = 388
    Top = 50
  end
  inherited cdsConsultar: TClientDataSet
    Left = 460
    Top = 50
    object cdsConsultarELE_CODIGO: TIntegerField
      FieldName = 'ELE_CODIGO'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsConsultarELE_NOME: TStringField
      FieldName = 'ELE_NOME'
      Size = 50
    end
    object cdsConsultarELE_NRFONE: TStringField
      FieldName = 'ELE_NRFONE'
      Size = 10
    end
    object cdsConsultarELE_ENDERECO: TStringField
      FieldName = 'ELE_ENDERECO'
      Size = 50
    end
  end
  object deEleitores: TDataSource
    AutoEdit = False
    DataSet = DMConn.cdsEleitores
    Left = 264
    Top = 24
  end
  object dsPedidos: TDataSource
    AutoEdit = False
    DataSet = DMConn.cdsPedidos
    OnStateChange = dsPedidosStateChange
    OnDataChange = dsPedidosDataChange
    Left = 304
    Top = 216
  end
end
