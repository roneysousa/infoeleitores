unit udmConn;

interface

uses
  SysUtils, Classes, inifiles, DBXpress, DB, SqlExpr,
  Controls, Windows, Messages, Forms, FMTBcd, DBClient, Provider;

type
  TDMConn = class(TDataModule)
    sqlConn: TSQLConnection;
    dstConfig: TSQLDataSet;
    dspConfig: TDataSetProvider;
    cdsConfig: TClientDataSet;
    cdsConfigCFG_ELEITOR: TIntegerField;
    cdsConfigCFG_PEDIDO: TIntegerField;
    dstEleitores: TSQLDataSet;
    dstPedidos: TSQLDataSet;
    dspEleitores: TDataSetProvider;
    cdsEleitores: TClientDataSet;
    dspPedidos: TDataSetProvider;
    cdsPedidos: TClientDataSet;
    dstEleitoresELE_CODIGO: TIntegerField;
    dstEleitoresELE_NOME: TStringField;
    dstEleitoresELE_NRIDENTIDADE: TStringField;
    dstEleitoresELE_CPF: TStringField;
    dstEleitoresELE_TITULO: TStringField;
    dstEleitoresELE_ZONA: TIntegerField;
    dstEleitoresELE_SECAO: TIntegerField;
    dstEleitoresELE_DTNASCIMENTO: TDateField;
    dstEleitoresELE_ENDERECO: TStringField;
    dstEleitoresELE_NUMERO: TIntegerField;
    dstEleitoresELE_COMPLEMENTO: TStringField;
    dstEleitoresELE_BAIRRO: TStringField;
    dstEleitoresELE_CEP: TStringField;
    dstEleitoresELE_CIDADE: TStringField;
    dstEleitoresELE_UF: TStringField;
    dstEleitoresELE_NRFONE: TStringField;
    dstEleitoresELE_NRCELULAR: TStringField;
    dstEleitoresELE_NMCONT1: TStringField;
    dstEleitoresELE_FONE_CONT1: TStringField;
    dstEleitoresELE_NMCONT2: TStringField;
    dstEleitoresELE_FONE_CONT2: TStringField;
    dstEleitoresELE_OBSERVACAO: TMemoField;
    cdsEleitoresELE_NOME: TStringField;
    cdsEleitoresELE_NRIDENTIDADE: TStringField;
    cdsEleitoresELE_CPF: TStringField;
    cdsEleitoresELE_TITULO: TStringField;
    cdsEleitoresELE_ZONA: TIntegerField;
    cdsEleitoresELE_SECAO: TIntegerField;
    cdsEleitoresELE_DTNASCIMENTO: TDateField;
    cdsEleitoresELE_ENDERECO: TStringField;
    cdsEleitoresELE_NUMERO: TIntegerField;
    cdsEleitoresELE_COMPLEMENTO: TStringField;
    cdsEleitoresELE_BAIRRO: TStringField;
    cdsEleitoresELE_CEP: TStringField;
    cdsEleitoresELE_CIDADE: TStringField;
    cdsEleitoresELE_UF: TStringField;
    cdsEleitoresELE_NRFONE: TStringField;
    cdsEleitoresELE_NRCELULAR: TStringField;
    cdsEleitoresELE_NMCONT1: TStringField;
    cdsEleitoresELE_FONE_CONT1: TStringField;
    cdsEleitoresELE_NMCONT2: TStringField;
    cdsEleitoresELE_FONE_CONT2: TStringField;
    cdsEleitoresELE_OBSERVACAO: TMemoField;
    dstPedidosPED_CODIGO: TIntegerField;
    dstPedidosPED_CLIENTE: TIntegerField;
    dstPedidosPED_DESCRICAO: TStringField;
    dstPedidosPED_DTPEDIDO: TDateField;
    dstPedidosPED_DTATENDIMENTO: TDateField;
    dstPedidosPED_SITUACAO: TStringField;
    dstPedidosPED_OBS: TMemoField;
    cdsPedidosPED_CODIGO: TIntegerField;
    cdsPedidosPED_CLIENTE: TIntegerField;
    cdsPedidosPED_DESCRICAO: TStringField;
    cdsPedidosPED_DTPEDIDO: TDateField;
    cdsPedidosPED_DTATENDIMENTO: TDateField;
    cdsPedidosPED_SITUACAO: TStringField;
    cdsPedidosPED_OBS: TMemoField;
    cdsEleitoresELE_CODIGO: TIntegerField;
    dstUsuarios: TSQLDataSet;
    dstUsuariosSEN_CODIGO: TIntegerField;
    dstUsuariosSEN_NOME: TStringField;
    dstUsuariosSEN_SNATUA: TStringField;
    dstUsuariosSEN_SNANTE: TStringField;
    dstUsuariosSEN_CARGO: TStringField;
    dstUsuariosSEN_DTATUAL: TDateField;
    dstUsuariosSEN_TERMINAL: TStringField;
    dstUsuariosSEN_ADMIN: TStringField;
    dstUsuariosSEN_CDGRUP: TIntegerField;
    dspUsuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    cdsUsuariosSEN_CODIGO: TIntegerField;
    cdsUsuariosSEN_NOME: TStringField;
    cdsUsuariosSEN_SNATUA: TStringField;
    cdsUsuariosSEN_SNANTE: TStringField;
    cdsUsuariosSEN_CARGO: TStringField;
    cdsUsuariosSEN_DTATUAL: TDateField;
    cdsUsuariosSEN_TERMINAL: TStringField;
    cdsUsuariosSEN_ADMIN: TStringField;
    cdsUsuariosSEN_CDGRUP: TIntegerField;
    cdsConfigCFG_USUARIOS: TIntegerField;
    qryUsuarios: TSQLQuery;
    qryUsuariosSEN_CODIGO: TIntegerField;
    qryUsuariosSEN_NOME: TStringField;
    qryUsuariosSEN_SNATUA: TStringField;
    qryUsuariosSEN_SNANTE: TStringField;
    qryUsuariosSEN_CARGO: TStringField;
    qryUsuariosSEN_DTATUAL: TDateField;
    qryUsuariosSEN_TERMINAL: TStringField;
    qryUsuariosSEN_ADMIN: TStringField;
    dstCartas: TSQLDataSet;
    dspCartas: TDataSetProvider;
    cdsCartas: TClientDataSet;
    dstCartasCAR_CODIGO: TIntegerField;
    dstCartasCAR_DESCRICAO: TStringField;
    dstCartasCAR_TEXTO: TMemoField;
    dstCartasCAR_TAMANHO_FONTE: TIntegerField;
    dstCartasCAR_NOME_FONTE: TStringField;
    cdsCartasCAR_CODIGO: TIntegerField;
    cdsCartasCAR_DESCRICAO: TStringField;
    cdsCartasCAR_TEXTO: TMemoField;
    cdsCartasCAR_TAMANHO_FONTE: TIntegerField;
    cdsCartasCAR_NOME_FONTE: TStringField;
    cdsConfigCFG_CARTAS: TIntegerField;
    cdsConfigCFG_CIDADE: TStringField;
    cdsConfigCFG_UF: TStringField;
    procedure sqlConnBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dspEleitoresGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspPedidosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspUsuariosGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Start;
    procedure Comit(aTransc : TTransactionDesc);
    procedure Rollback;
    procedure Selecionar_Pedido(iCliente : Integer);
  end;

Const
    M_NMFILE = 'logo.bmp';

var
  DMConn: TDMConn;
  Transc : TTransactionDesc;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TDMConn.sqlConnBeforeConnect(Sender: TObject);
Var
	ConfigIni : TIniFile;
	Path : String;
Begin
	ConfigIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Config.ini');
	sqlConn.Params.Values['Database'] := ConfigIni.ReadString('CONFIG','DATABASE','');
	ConfigIni.Free;
end;

procedure TDMConn.DataModuleCreate(Sender: TObject);
begin
      try
           sqlConn.Connected := True;
      Except
          on e: exception do
          begin
              Application.MessageBox(PChar('Erro na abertura do Sistema!!! Erro:'+#13
                      + E.Message),
                      'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
              sqlConn.Connected := false;
              Application.Terminate;
          End;
      End;
end;

procedure TDMConn.DataModuleDestroy(Sender: TObject);
begin
     sqlConn.Connected := False;
end;

procedure TDMConn.dspEleitoresGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
      TableName := 'ELEITORES';
end;

procedure TDMConn.dspPedidosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'PEDIDOS';
end;

procedure TDMConn.Comit(aTransc: TTransactionDesc);
begin
     sqlConn.Commit(aTransc);
end;

procedure TDMConn.Rollback;
begin
     sqlConn.Rollback(Transc);
     raise Exception.Create(MSG_ERROR);
end;

procedure TDMConn.Start;
begin
     Transc.IsolationLevel := xilREADCOMMITTED;
     Transc.TransactionID  := StrToInt(uFuncoes.IDTransation);
     sqlConn.StartTransaction(Transc);
end;

procedure TDMConn.Selecionar_Pedido(iCliente: Integer);
begin
     With cdsPedidos do
      begin
           DisableControls;
           Close;
           Params.ParamByName('pCLIENTE').AsInteger := iCliente;
           Open;
           EnableControls;     
      End;
end;

procedure TDMConn.dspUsuariosGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
     TableName := 'USUARIOS';
end;

end.


