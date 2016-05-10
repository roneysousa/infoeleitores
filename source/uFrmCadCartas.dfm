inherited frmCadCartas: TfrmCadCartas
  Left = 231
  Top = 152
  Caption = 'Editar Carta'
  ClientHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Height = 430
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      inherited DBText1: TDBText
        DataField = 'CAR_CODIGO'
        DataSource = dsCartas
      end
      object Label2: TLabel [2]
        Left = 12
        Top = 56
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = dbeDescricao
        Transparent = True
      end
      object Label3: TLabel [3]
        Left = 12
        Top = 96
        Width = 27
        Height = 13
        Caption = 'Texto'
        FocusControl = DBMemo1
        Transparent = True
      end
      inherited pnlBotoes: TPanel
        Top = 361
      end
      object dbeDescricao: TDBEdit
        Left = 12
        Top = 72
        Width = 500
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CAR_DESCRICAO'
        DataSource = dsCartas
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 12
        Top = 112
        Width = 500
        Height = 233
        DataField = 'CAR_TEXTO'
        DataSource = dsCartas
        ScrollBars = ssBoth
        TabOrder = 2
      end
    end
    inherited TabSheet2: TTabSheet
      inherited pnlProcurar: TPanel
        inherited btnConsultar: TBitBtn
          OnClick = btnConsultarClick
        end
      end
      inherited Panel3: TPanel
        Height = 329
      end
      inherited grdConsultar: TDBGrid
        Height = 329
        Columns = <
          item
            Expanded = False
            FieldName = 'CAR_CODIGO'
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
            FieldName = 'CAR_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 439
            Visible = True
          end>
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 430
  end
  inherited datasetConsultar: TSQLDataSet
    CommandText = 'select CAR_CODIGO, CAR_DESCRICAO from CARTAS'
    MaxBlobSize = -1
    SQLConnection = DMConn.sqlConn
  end
  inherited cdsConsultar: TClientDataSet
    object cdsConsultarCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      Required = True
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object cdsConsultarCAR_DESCRICAO: TStringField
      FieldName = 'CAR_DESCRICAO'
      Size = 50
    end
  end
  object dsCartas: TDataSource
    AutoEdit = False
    DataSet = DMConn.cdsCartas
    Left = 240
    Top = 48
  end
end
