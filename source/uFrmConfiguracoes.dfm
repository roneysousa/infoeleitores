inherited frmConfig: TfrmConfig
  Left = 186
  Caption = 'Configura'#231#245'es'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      inherited Label1: TLabel
        Visible = False
      end
      inherited DBText1: TDBText
        Visible = False
      end
      object Label2: TLabel [2]
        Left = 16
        Top = 52
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit1
      end
      object Label3: TLabel [3]
        Left = 16
        Top = 92
        Width = 14
        Height = 13
        Caption = 'UF'
      end
      inherited pnlBotoes: TPanel
        inherited BtAdicionar: TBitBtn
          Visible = False
        end
        inherited BtExcluir: TBitBtn
          Visible = False
        end
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 68
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CFG_CIDADE'
        DataSource = dsConfig
        TabOrder = 1
      end
      object cmbUF: TDBComboBox
        Left = 15
        Top = 106
        Width = 69
        Height = 22
        Style = csOwnerDrawFixed
        CharCase = ecUpperCase
        DataField = 'CFG_UF'
        DataSource = dsConfig
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
        TabOrder = 2
      end
    end
  end
  object dsConfig: TDataSource
    AutoEdit = False
    DataSet = DMConn.cdsConfig
    Left = 248
    Top = 64
  end
end
