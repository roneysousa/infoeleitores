inherited frmCadUsuarios: TfrmCadUsuarios
  Left = 178
  Top = 114
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 326
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 307
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      inherited Label1: TLabel
        Left = 16
      end
      inherited DBText1: TDBText
        Left = 16
        DataField = 'SEN_CODIGO'
        DataSource = dsUsuarios
      end
      object Label2: TLabel [2]
        Left = 16
        Top = 61
        Width = 28
        Height = 13
        Caption = 'Nome'
        FocusControl = dbeDescricao
        Transparent = True
      end
      object Label3: TLabel [3]
        Left = 16
        Top = 101
        Width = 31
        Height = 13
        Caption = 'Cargo:'
        FocusControl = dbeCargo
        Transparent = True
      end
      object lbl_senha: TLabel [4]
        Left = 16
        Top = 141
        Width = 34
        Height = 13
        Caption = 'Senha:'
        Transparent = True
      end
      object lbl_confirma: TLabel [5]
        Left = 16
        Top = 181
        Width = 78
        Height = 13
        Caption = 'Confirma Senha:'
        Transparent = True
      end
      inherited pnlBotoes: TPanel
        Top = 238
      end
      object dbeDescricao: TDBEdit
        Left = 16
        Top = 77
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SEN_NOME'
        DataSource = dsUsuarios
        TabOrder = 1
      end
      object dbeCargo: TDBEdit
        Left = 16
        Top = 117
        Width = 249
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SEN_CARGO'
        DataSource = dsUsuarios
        TabOrder = 2
      end
      object dbeSNATUA: TEdit
        Left = 16
        Top = 157
        Width = 82
        Height = 21
        MaxLength = 6
        PasswordChar = '*'
        TabOrder = 3
        OnExit = dbeSNATUAExit
      end
      object edt_Confirma: TEdit
        Left = 16
        Top = 197
        Width = 82
        Height = 21
        MaxLength = 6
        PasswordChar = '*'
        TabOrder = 4
        OnExit = edt_ConfirmaExit
      end
    end
    inherited TabSheet2: TTabSheet
      inherited Panel3: TPanel
        Height = 206
      end
      inherited grdConsultar: TDBGrid
        Height = 206
        Columns = <
          item
            Expanded = False
            FieldName = 'SEN_CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEN_NOME'
            Title.Caption = 'Nome'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 455
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 307
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select SEN_CODIGO, SEN_NOME from USUARIOS order by SEN_NOME'
    MaxBlobSize = -1
    SQLConnection = DMConn.sqlConn
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsConsultarSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      Required = True
      Size = 30
    end
  end
  object dsUsuarios: TDataSource
    AutoEdit = False
    DataSet = DMConn.cdsUsuarios
    Left = 248
    Top = 56
  end
end
