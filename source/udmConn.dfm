object DMConn: TDMConn
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 217
  Top = 132
  Height = 338
  Width = 525
  object sqlConn: TSQLConnection
    ConnectionName = 'ELEICAO'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=D:\Sistemas\Eleitores\Dados\ELEITORES.FDB'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'c:\infog2\fbclient.dll'
    BeforeConnect = sqlConnBeforeConnect
    Connected = True
    Left = 32
    Top = 24
  end
  object dstConfig: TSQLDataSet
    CommandText = 'select * from CONFIG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 96
    Top = 24
  end
  object dspConfig: TDataSetProvider
    DataSet = dstConfig
    Options = [poAllowCommandText]
    Left = 168
    Top = 24
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConfig'
    Left = 232
    Top = 24
    object cdsConfigCFG_ELEITOR: TIntegerField
      FieldName = 'CFG_ELEITOR'
    end
    object cdsConfigCFG_PEDIDO: TIntegerField
      FieldName = 'CFG_PEDIDO'
    end
    object cdsConfigCFG_USUARIOS: TIntegerField
      FieldName = 'CFG_USUARIOS'
    end
    object cdsConfigCFG_CARTAS: TIntegerField
      FieldName = 'CFG_CARTAS'
    end
    object cdsConfigCFG_CIDADE: TStringField
      FieldName = 'CFG_CIDADE'
      Size = 30
    end
    object cdsConfigCFG_UF: TStringField
      FieldName = 'CFG_UF'
      FixedChar = True
      Size = 2
    end
  end
  object dstEleitores: TSQLDataSet
    CommandText = 'select * from ELEITORES Where (ELE_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 32
    Top = 96
    object dstEleitoresELE_CODIGO: TIntegerField
      FieldName = 'ELE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstEleitoresELE_NOME: TStringField
      FieldName = 'ELE_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstEleitoresELE_NRIDENTIDADE: TStringField
      FieldName = 'ELE_NRIDENTIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object dstEleitoresELE_CPF: TStringField
      FieldName = 'ELE_CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object dstEleitoresELE_TITULO: TStringField
      FieldName = 'ELE_TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstEleitoresELE_ZONA: TIntegerField
      FieldName = 'ELE_ZONA'
      ProviderFlags = [pfInUpdate]
    end
    object dstEleitoresELE_SECAO: TIntegerField
      FieldName = 'ELE_SECAO'
      ProviderFlags = [pfInUpdate]
    end
    object dstEleitoresELE_DTNASCIMENTO: TDateField
      FieldName = 'ELE_DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstEleitoresELE_ENDERECO: TStringField
      FieldName = 'ELE_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstEleitoresELE_NUMERO: TIntegerField
      FieldName = 'ELE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object dstEleitoresELE_COMPLEMENTO: TStringField
      FieldName = 'ELE_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstEleitoresELE_BAIRRO: TStringField
      FieldName = 'ELE_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object dstEleitoresELE_CEP: TStringField
      FieldName = 'ELE_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dstEleitoresELE_CIDADE: TStringField
      FieldName = 'ELE_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstEleitoresELE_UF: TStringField
      FieldName = 'ELE_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object dstEleitoresELE_NRFONE: TStringField
      FieldName = 'ELE_NRFONE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstEleitoresELE_NRCELULAR: TStringField
      FieldName = 'ELE_NRCELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstEleitoresELE_NMCONT1: TStringField
      FieldName = 'ELE_NMCONT1'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstEleitoresELE_FONE_CONT1: TStringField
      FieldName = 'ELE_FONE_CONT1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstEleitoresELE_NMCONT2: TStringField
      FieldName = 'ELE_NMCONT2'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object dstEleitoresELE_FONE_CONT2: TStringField
      FieldName = 'ELE_FONE_CONT2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object dstEleitoresELE_OBSERVACAO: TMemoField
      FieldName = 'ELE_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
  end
  object dstPedidos: TSQLDataSet
    CommandText = 'select * from PEDIDOS Where (PED_CLIENTE = :pCLIENTE)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 32
    Top = 152
    object dstPedidosPED_CODIGO: TIntegerField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstPedidosPED_CLIENTE: TIntegerField
      FieldName = 'PED_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstPedidosPED_DESCRICAO: TStringField
      FieldName = 'PED_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object dstPedidosPED_DTPEDIDO: TDateField
      FieldName = 'PED_DTPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object dstPedidosPED_DTATENDIMENTO: TDateField
      FieldName = 'PED_DTATENDIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object dstPedidosPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstPedidosPED_OBS: TMemoField
      FieldName = 'PED_OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
  end
  object dspEleitores: TDataSetProvider
    DataSet = dstEleitores
    Options = [poAllowCommandText]
    OnGetTableName = dspEleitoresGetTableName
    Left = 104
    Top = 96
  end
  object cdsEleitores: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspEleitores'
    Left = 184
    Top = 96
    object cdsEleitoresELE_CODIGO: TIntegerField
      FieldName = 'ELE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsEleitoresELE_NOME: TStringField
      FieldName = 'ELE_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEleitoresELE_NRIDENTIDADE: TStringField
      FieldName = 'ELE_NRIDENTIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsEleitoresELE_CPF: TStringField
      Alignment = taRightJustify
      FieldName = 'ELE_CPF'
      ProviderFlags = [pfInUpdate]
      EditMask = '999.999.999-99;0;_'
      Size = 14
    end
    object cdsEleitoresELE_TITULO: TStringField
      FieldName = 'ELE_TITULO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsEleitoresELE_ZONA: TIntegerField
      FieldName = 'ELE_ZONA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object cdsEleitoresELE_SECAO: TIntegerField
      FieldName = 'ELE_SECAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object cdsEleitoresELE_DTNASCIMENTO: TDateField
      FieldName = 'ELE_DTNASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEleitoresELE_ENDERECO: TStringField
      FieldName = 'ELE_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsEleitoresELE_NUMERO: TIntegerField
      FieldName = 'ELE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEleitoresELE_COMPLEMENTO: TStringField
      FieldName = 'ELE_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEleitoresELE_BAIRRO: TStringField
      FieldName = 'ELE_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cdsEleitoresELE_CEP: TStringField
      Alignment = taRightJustify
      FieldName = 'ELE_CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object cdsEleitoresELE_CIDADE: TStringField
      FieldName = 'ELE_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEleitoresELE_UF: TStringField
      FieldName = 'ELE_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsEleitoresELE_NRFONE: TStringField
      Alignment = taRightJustify
      FieldName = 'ELE_NRFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 10
    end
    object cdsEleitoresELE_NRCELULAR: TStringField
      Alignment = taRightJustify
      FieldName = 'ELE_NRCELULAR'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 10
    end
    object cdsEleitoresELE_NMCONT1: TStringField
      FieldName = 'ELE_NMCONT1'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsEleitoresELE_FONE_CONT1: TStringField
      Alignment = taRightJustify
      FieldName = 'ELE_FONE_CONT1'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 10
    end
    object cdsEleitoresELE_NMCONT2: TStringField
      FieldName = 'ELE_NMCONT2'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsEleitoresELE_FONE_CONT2: TStringField
      Alignment = taRightJustify
      FieldName = 'ELE_FONE_CONT2'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 10
    end
    object cdsEleitoresELE_OBSERVACAO: TMemoField
      FieldName = 'ELE_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
  end
  object dspPedidos: TDataSetProvider
    DataSet = dstPedidos
    Options = [poAllowCommandText]
    OnGetTableName = dspPedidosGetTableName
    Left = 104
    Top = 152
  end
  object cdsPedidos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspPedidos'
    Left = 184
    Top = 152
    object cdsPedidosPED_CODIGO: TIntegerField
      FieldName = 'PED_CODIGO'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsPedidosPED_CLIENTE: TIntegerField
      FieldName = 'PED_CLIENTE'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsPedidosPED_DESCRICAO: TStringField
      FieldName = 'PED_DESCRICAO'
      Size = 60
    end
    object cdsPedidosPED_DTPEDIDO: TDateField
      FieldName = 'PED_DTPEDIDO'
    end
    object cdsPedidosPED_DTATENDIMENTO: TDateField
      FieldName = 'PED_DTATENDIMENTO'
    end
    object cdsPedidosPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsPedidosPED_OBS: TMemoField
      FieldName = 'PED_OBS'
      BlobType = ftMemo
    end
  end
  object dstUsuarios: TSQLDataSet
    CommandText = 'select * from USUARIOS Where (SEN_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 32
    Top = 208
    object dstUsuariosSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstUsuariosSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object dstUsuariosSEN_SNATUA: TStringField
      FieldName = 'SEN_SNATUA'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object dstUsuariosSEN_SNANTE: TStringField
      FieldName = 'SEN_SNANTE'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object dstUsuariosSEN_CARGO: TStringField
      FieldName = 'SEN_CARGO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object dstUsuariosSEN_DTATUAL: TDateField
      FieldName = 'SEN_DTATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object dstUsuariosSEN_TERMINAL: TStringField
      FieldName = 'SEN_TERMINAL'
      ProviderFlags = [pfInUpdate]
    end
    object dstUsuariosSEN_ADMIN: TStringField
      FieldName = 'SEN_ADMIN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object dstUsuariosSEN_CDGRUP: TIntegerField
      FieldName = 'SEN_CDGRUP'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = dstUsuarios
    Options = [poAllowCommandText]
    OnGetTableName = dspUsuariosGetTableName
    Left = 104
    Top = 208
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspUsuarios'
    Left = 184
    Top = 208
    object cdsUsuariosSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsUsuariosSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      Required = True
      Size = 30
    end
    object cdsUsuariosSEN_SNATUA: TStringField
      FieldName = 'SEN_SNATUA'
      Size = 6
    end
    object cdsUsuariosSEN_SNANTE: TStringField
      FieldName = 'SEN_SNANTE'
      Size = 6
    end
    object cdsUsuariosSEN_CARGO: TStringField
      FieldName = 'SEN_CARGO'
      Size = 30
    end
    object cdsUsuariosSEN_DTATUAL: TDateField
      FieldName = 'SEN_DTATUAL'
    end
    object cdsUsuariosSEN_TERMINAL: TStringField
      FieldName = 'SEN_TERMINAL'
    end
    object cdsUsuariosSEN_ADMIN: TStringField
      FieldName = 'SEN_ADMIN'
      FixedChar = True
      Size = 1
    end
    object cdsUsuariosSEN_CDGRUP: TIntegerField
      FieldName = 'SEN_CDGRUP'
    end
  end
  object qryUsuarios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from USUARIOS Where (SEN_CODIGO = :pCODIGO)')
    SQLConnection = sqlConn
    Left = 312
    Top = 40
    object qryUsuariosSEN_CODIGO: TIntegerField
      FieldName = 'SEN_CODIGO'
      Required = True
    end
    object qryUsuariosSEN_NOME: TStringField
      FieldName = 'SEN_NOME'
      Required = True
      Size = 30
    end
    object qryUsuariosSEN_SNATUA: TStringField
      FieldName = 'SEN_SNATUA'
      Size = 6
    end
    object qryUsuariosSEN_SNANTE: TStringField
      FieldName = 'SEN_SNANTE'
      Size = 6
    end
    object qryUsuariosSEN_CARGO: TStringField
      FieldName = 'SEN_CARGO'
      Size = 30
    end
    object qryUsuariosSEN_DTATUAL: TDateField
      FieldName = 'SEN_DTATUAL'
    end
    object qryUsuariosSEN_TERMINAL: TStringField
      FieldName = 'SEN_TERMINAL'
    end
    object qryUsuariosSEN_ADMIN: TStringField
      FieldName = 'SEN_ADMIN'
      FixedChar = True
      Size = 1
    end
  end
  object dstCartas: TSQLDataSet
    CommandText = 'select * from CARTAS Where (CAR_CODIGO = :pCODIGO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConn
    Left = 248
    Top = 96
    object dstCartasCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dstCartasCAR_DESCRICAO: TStringField
      FieldName = 'CAR_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object dstCartasCAR_TEXTO: TMemoField
      FieldName = 'CAR_TEXTO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dstCartasCAR_TAMANHO_FONTE: TIntegerField
      FieldName = 'CAR_TAMANHO_FONTE'
      ProviderFlags = [pfInUpdate]
    end
    object dstCartasCAR_NOME_FONTE: TStringField
      FieldName = 'CAR_NOME_FONTE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object dspCartas: TDataSetProvider
    DataSet = dstCartas
    Options = [poAllowCommandText]
    Left = 312
    Top = 96
  end
  object cdsCartas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspCartas'
    Left = 376
    Top = 104
    object cdsCartasCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object cdsCartasCAR_DESCRICAO: TStringField
      FieldName = 'CAR_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsCartasCAR_TEXTO: TMemoField
      FieldName = 'CAR_TEXTO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsCartasCAR_TAMANHO_FONTE: TIntegerField
      FieldName = 'CAR_TAMANHO_FONTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCartasCAR_NOME_FONTE: TStringField
      FieldName = 'CAR_NOME_FONTE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
end
