object frmCadastro: TfrmCadastro
  Left = 197
  Top = 127
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 375
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 590
    Height = 356
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&Dados'
      object Label1: TLabel
        Left = 12
        Top = 12
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 12
        Top = 27
        Width = 80
        Height = 22
        AutoSize = True
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object pnlBotoes: TPanel
        Left = 0
        Top = 287
        Width = 582
        Height = 41
        Align = alBottom
        Color = clNavy
        TabOrder = 0
        object BtAdicionar: TBitBtn
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Incluir novo registro'
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BtAdicionarClick
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
        object BtEditar: TBitBtn
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Alterar registro'
          Caption = '&Alterar'
          TabOrder = 1
          OnClick = BtEditarClick
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
        object BtExcluir: TBitBtn
          Left = 168
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Excluir registro'
          Caption = '&Excluir'
          TabOrder = 2
          OnClick = BtExcluirClick
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
        object BtGravar: TBitBtn
          Left = 286
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Gravar dados'
          Caption = '&Gravar'
          Enabled = False
          TabOrder = 3
          OnClick = BtGravarClick
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
        object BtCancelar: TBitBtn
          Left = 367
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Cancelar'
          Caption = '&Cancelar'
          Enabled = False
          TabOrder = 4
          OnClick = BtCancelarClick
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
        object BtSair: TBitBtn
          Left = 470
          Top = 8
          Width = 75
          Height = 25
          Hint = 'Fechar janela'
          Caption = '&Fechar'
          TabOrder = 5
          OnClick = BtSairClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
            4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
            4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
            4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
            824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
            41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
            575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
            824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
            43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
            6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
            824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
            C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
            65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
            824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
            D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
            6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
            824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
            D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
            76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
            FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
            4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
            4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'C&onsulta'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object pnlProcurar: TPanel
        Left = 0
        Top = 0
        Width = 582
        Height = 73
        Align = alTop
        TabOrder = 0
        object lblConsultar: TLabel
          Left = 137
          Top = 6
          Width = 84
          Height = 13
          Caption = 'Nome/Descri'#231#227'o:'
        end
        object rgConsultar: TRadioGroup
          Left = 4
          Top = 1
          Width = 127
          Height = 55
          Caption = 'Consultar por:'
          ItemIndex = 1
          Items.Strings = (
            '&C'#243'digo'
            '&Nome/Descri'#231#227'o')
          TabOrder = 0
          OnClick = rgConsultarClick
        end
        object edtConsultar: TEdit
          Left = 135
          Top = 21
          Width = 330
          Height = 19
          Hint = 'Informe o valor para consultar'
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnChange = edtConsultarChange
          OnKeyDown = edtConsultarKeyDown
          OnKeyPress = edtConsultarKeyPress
        end
        object btnConsultar: TBitBtn
          Left = 472
          Top = 16
          Width = 95
          Height = 25
          Hint = 'Ver registro'
          Caption = '&Ver Registro'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            080000000000000100000000000000000000000100000000000000000000FFFF
            FF005441B100614EBE00C0C0C000FCD7DA00ECC8CA00F0CCCE00EFCBCD00EECA
            CC00FDD9DB00FBD7D900EAC5C700EEC9CB00F9D4D600FAD5D700E1BABB00ECC4
            C500EDC6C700E6C0C100E4BEBF00E3BDBE00E9C3C400E7C2C300F4CECF00F8D3
            D400F6D1D200FFCFCF00D6AEAE00D9B2B200D8B1B100E7BFBF00E8C1C100EAC3
            C300F6D0D000CAA09F00CCA2A100D4AAA900E0B6B500DEB5B400DCB3B200D7B0
            AF00E1B9B800C3999700CDA4A200D3AAA80046C6C50053D3D2004D8DB900ADAF
            D900BABCE600F2F2F200C3C3C300B6B6B6008F8F8F008B8B8B00282828001B1B
            1B000D0D0D000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000040404040404
            0404040404040404040404040404040439010404040404040404040401330133
            38390133013304040404043A003A003A392F3936330104040404040001070B16
            382E0339013304040404043A330F07050C382E03390104040404040001170E08
            0A392F02383304040404043A33121319090A392F0238330404040400011D1114
            1A0D382E033901040404043A332A1E21152206382E03390104040400012C2629
            201018392F3938330404043A332524271C1F003A3930023833040400012B2D23
            28001B00383132390104043A330133013301000135383138330404003A003A00
            3A003A3534393837010404040404040404040404040404040404}
        end
      end
      object Panel3: TPanel
        Left = 548
        Top = 73
        Width = 34
        Height = 255
        Align = alRight
        TabOrder = 1
        object sbProximo: TSpeedButton
          Left = 5
          Top = 83
          Width = 25
          Height = 35
          Hint = 'Pr'#243'ximo registro'
          Enabled = False
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FFFFFF00FFE6
            E600FEE5E500FCE3E300FBE1E100F9DFE000F7DDDE00F7DDDD00F5DBDB00F4DB
            DB00F2D9D900E6D9D900F0D6D700EED4D400EBD2D200E9D0D000E9CFD000E7CD
            CD00E5CBCB00E3C9C900E0C7C700DEC4C400DCC2C200CCC0C000D9C0BF00D7BE
            BD00D4BBBB00D3B9B900D0B7B700CFB5B500CEB4B400CCB3B300C9B0B000C7AE
            AE00C5ACAC00C3AAAA00C1A8A800C1A7A700BFA5A500BDA3A300BCA3A300BAA0
            A100BAA1A000B89E9E00B59C9C00B39A9A00AF969600AD949400A88F8F00A68D
            8D00A18888009F8686009B8382009A818100998080006633330000000000C0C0
            C000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939003939
            3939393939393939393939393939393939393939000037393939393939393939
            39393939393939393939390000370D3839393939393939393939393939393939
            39390000370D260D383939393939393939393939393939393900003706260D2E
            1138393939393939393939393939393900003706260D2C112E15383939393939
            3939393939393900003705210D2B112E15311938393939393939393939390000
            3706210D261038143019331D383939393939393939000037012106260D383938
            18331D331D38393939393939000037012106260D3839393938193321331D3839
            393939393937011D05250C3839393939393821331D170B383939393939393801
            25063839393939393939381D170B383939393939393939380638393939393939
            393939380B383939393939393939393938393939393939393939393938393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939393939393939
            3939393939393939393939393939393939393939393939393939}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbProximoClick
        end
        object sbUltimo: TSpeedButton
          Left = 5
          Top = 122
          Width = 25
          Height = 35
          Hint = #218'ltimo registro'
          Enabled = False
          Flat = True
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000FFFFFF006130
            30006E3D3D00916161009E6E6E00C2919100CF9E9E00C0C0C000000000000000
            0000000000000000000000000000000000000000000000000000777777777777
            7777777777777777777777777777777777777777777777777777777777777777
            7777777777777777777777777777777077777777777777777777770027777777
            7777777777777002327777777777777777770023432777777777777777700234
            3432777777777777770023434343277777777777700234343434327777777777
            0025656565656547777777700256565656565654777777772121212121212121
            2777777777777777777777777777777000000000000000007777777034343434
            3434343617777770456565656565656527777770365656565656565617777770
            4565656565656565277777771212121212121212177777777777777777777777
            7777777777777777777777777777777777777777777777777777}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbUltimoClick
        end
        object sbAnterior: TSpeedButton
          Left = 5
          Top = 44
          Width = 25
          Height = 35
          Hint = 'Registro anterior'
          Enabled = False
          Flat = True
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000000000FFFFFF00FEE5
            E400FDE3E300FBE1E100F9DFE000F7DEDD00F4DBDB00F2D9D900E6D9D900F0D7
            D700EED4D400EBD2D200E9CFCF00E7CECD00E5CBCB00E3C9C900E0C6C700DEC4
            C500DBC2C200D9C0C000CDC0C000CCC0C000D7BDBD00D5BBBB00D3B9B900D1B7
            B700CFB6B500CFB5B500CDB4B400CCB3B300C7AEAE00C6ACAC00C1A8A800BFA6
            A600BAA0A100B89E9E00B39A9A00B1989800AD949400AA919100A68D8D00A38A
            8A009F8686009D8484009C8283009A818100998080006633330000000000C0C0
            C000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131003131313131313131
            313131003131313131313131313100002F31313131313131313100002F313131
            313131313100002F01303131313131313100002F1A3031313131313100002F01
            1E0530313131313100002F1A2A1A303131313131312F011E05210A3031313100
            002F1E2A1A1408303131313131313004210A230D303100002F1E2A1A14083031
            313131313131313005210D241130002F1A2A1A16083031313131313131313131
            300A240D26162F1A2A1A140830313131313131313131313131300D2611281A2A
            1A1408303131313131313131313131313131301128162A1A1408303131313131
            313131313131313131313130162A1A1408303131313131313131313131313131
            3131313130191408303131313131313131313131313131313131313131300830
            3131313131313131313131313131313131313131313130313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131313131313131
            3131313131313131313131313131313131313131313131313131}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbAnteriorClick
        end
        object sbPrimeiro: TSpeedButton
          Left = 5
          Top = 6
          Width = 25
          Height = 35
          Hint = 'Primeiro registro'
          Enabled = False
          Flat = True
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000FFFFFF006130
            30006E3D3D00916161009E6E6E00C2919100CF9E9E00C0C0C000000000000000
            0000000000000000000000000000000000000000000000000000777777777777
            7777777777777777777777777777777777777777777777777777777777777770
            0000000000000000777777703434343434343436177777704565656565656565
            2777777036565656565656561777777045656565656565652777777712121212
            1212121217777777777777777777777777777777777777777777777777777770
            0000000000000000777777771212121212121212177777777143434343434341
            7777777777143434343656177777777777714343436561777777777777771434
            3656177777777777777771436561777777777777777777165617777777777777
            7777777161777777777777777777777717777777777777777777777777777777
            7777777777777777777777777777777777777777777777777777}
          ParentShowHint = False
          ShowHint = True
          OnClick = sbPrimeiroClick
        end
      end
      object grdConsultar: TDBGrid
        Left = 0
        Top = 73
        Width = 548
        Height = 255
        Align = alClient
        Ctl3D = False
        DataSource = dsConsultar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 356
    Width = 590
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object dsConsultar: TDataSource
    DataSet = cdsConsultar
    OnStateChange = dsConsultarStateChange
    OnDataChange = dsConsultarDataChange
    Left = 164
    Top = 194
  end
  object datasetConsultar: TSQLDataSet
    Params = <>
    Left = 244
    Top = 194
  end
  object dspConsultar: TDataSetProvider
    DataSet = datasetConsultar
    Options = [poAllowCommandText]
    Left = 324
    Top = 194
  end
  object cdsConsultar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultar'
    Left = 396
    Top = 194
  end
end
