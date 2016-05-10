unit uFrmCartas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, FMTBcd, Provider,
  SqlExpr, DB, DBClient, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppCtrls, ppPrnabl, ppBands, ppCache, ppStrtch, ppRichTx, ppMemo, ComObj;

type
  TfrmCartas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cmbMeses: TComboBox;
    Panel2: TPanel;
    BtImprimir: TBitBtn;
    BtSair: TBitBtn;
    Panel3: TPanel;
    grdConsultar: TDBGrid;
    cdsDados: TClientDataSet;
    cdsDadosCLI_CODIGO: TIntegerField;
    cdsDadosCLI_NOME: TStringField;
    cdsDadosCLI_DTNASC: TDateField;
    cdsDadosCLI_DIA: TIntegerField;
    cdsDadosCLI_FONE: TStringField;
    dstEleitores: TSQLDataSet;
    dspEleitores: TDataSetProvider;
    cdsEleitores: TClientDataSet;
    btnConsultar: TBitBtn;
    edtMes: TEdit;
    lnl_NMMES: TLabel;
    cdsEleitoresELE_CODIGO: TIntegerField;
    cdsEleitoresELE_NOME: TStringField;
    cdsEleitoresELE_NRIDENTIDADE: TStringField;
    cdsEleitoresELE_DTNASCIMENTO: TDateField;
    cdsEleitoresELE_ENDERECO: TStringField;
    cdsEleitoresELE_NUMERO: TIntegerField;
    cdsEleitoresELE_COMPLEMENTO: TStringField;
    cdsEleitoresELE_BAIRRO: TStringField;
    cdsEleitoresELE_CEP: TStringField;
    cdsEleitoresELE_CIDADE: TStringField;
    cdsEleitoresELE_UF: TStringField;
    cdsEleitoresELE_NRFONE: TStringField;
    dsDados: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    lblTitulo: TppLabel;
    lblData: TppLabel;
    ppLabel1: TppLabel;
    txtTexto: TppMemo;
    lblEleitor: TppLabel;
    btnTodos: TBitBtn;
    btnCarta: TBitBtn;
    btnWord: TBitBtn;
    procedure BtSairClick(Sender: TObject);
    procedure cmbMesesExit(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure btnCartaClick(Sender: TObject);
    procedure btnWordClick(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure Imprimir_Eleitor(iCodigo, iTela : integer);
    procedure Imprimir_Todos_Eleitor();
    procedure VISUALIZACAO;
  public
    { Public declarations }
  end;

var
  frmCartas: TfrmCartas;

implementation

uses udmConn, uFuncoes, frmMainEleitores, uFrmCadCartas;

{$R *.dfm}

procedure TfrmCartas.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCartas.cmbMesesExit(Sender: TObject);
Var
   M_NUMMES : Word;
begin
     If not uFuncoes.Empty(edtMes.Text) Then
     Begin
         If (StrtoInt(edtMes.Text) < 1)
           or (StrtoInt(edtMes.Text) > 12) Then
         begin
             Application.MessageBox('Mês inválido!!!','ATENÇÃO',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             edtMes.Clear;
             edtMes.SetFocus;
             Exit;
         End;
         //
         M_NUMMES := StrtoInt(edtMes.Text);
         edtMes.Text := uFuncoes.StrZero(edtMes.Text,2);
         lnl_NMMES.Caption := uFuncoes.MesExtenso2(M_NUMMES);
     End;
end;

procedure TfrmCartas.btnConsultarClick(Sender: TObject);
Var
    M_NUMMES : String;
begin
    try
     Screen.Cursor := crHourGlass;
     BtImprimir.Enabled := False;
     //
     M_NUMMES := uFuncoes.GetMes(cmbMeses.Text);
     try
          cdsEleitores.Close;
          With dstEleitores do
          Begin
               Active := False;
               CommandText := 'select ELE_CODIGO, ELE_NOME, ELE_NRIDENTIDADE, ELE_DTNASCIMENTO, ';
               CommandText := CommandText + 'ELE_ENDERECO, ELE_NUMERO, ELE_COMPLEMENTO, ELE_BAIRRO, ELE_CEP, ELE_CIDADE, ';
               CommandText := CommandText + 'ELE_UF, ELE_NRFONE from  ELEITORES order by ELE_NOME';
               Active := True;
          End;
          cdsEleitores.Open;
          //
          cdsEleitores.First;
          If (cdsDados.Active = False) Then
             cdsDados.Open;
          //
          cdsDados.EmptyDataSet;
          cdsDados.DisableControls;
          //
          While not (cdsEleitores.Eof) do
          Begin
               If (Copy(cdsEleitoresELE_DTNASCIMENTO.AsString,4,2) = M_NUMMES) Then
               Begin
                     With cdsDados do
                     Begin
                          Append;
                          FieldByName('CLI_CODIGO').AsInteger := cdsEleitoresELE_CODIGO.AsInteger;
                          FieldByName('CLI_NOME').AsString    := cdsEleitoresELE_NOME.AsString;
                          FieldByName('CLI_DTNASC').AsDateTime := cdsEleitoresELE_DTNASCIMENTO.AsDateTime;
                          FieldByName('CLI_DIA').AsInteger    :=  StrtoInt(Copy(cdsEleitoresELE_DTNASCIMENTO.AsString,1,2));
                          If not uFuncoes.Empty(cdsEleitoresELE_NRFONE.AsString) Then
                            FieldByName('CLI_FONE').AsString    :=  '('+
                             Copy(cdsEleitoresELE_NRFONE.AsString,1,2)+')'+
                             Copy(cdsEleitoresELE_NRFONE.AsString,3,4)+'-'+
                             Copy(cdsEleitoresELE_NRFONE.AsString,7,4);
                          //
                          Post;
                     End;
               End;
               //
               cdsEleitores.Next;
          End;
          cdsDados.EnableControls;
          //
          {If (cdsDados.RecordCount > 0) Then
          Begin
               With ppReport1 do
               Begin
                    lblRelatorio.Caption := 'RELAÇÃO DE CLIENTES ANIVERSARIANTES';
                    txtMes.Caption := 'MÊS...: '+ cmbMeses.Text;
                    PrintReport;
               End;
          End
          Else
          Begin
             Application.MessageBox('Não há anivesariantes no mês indicado!!!','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             cmbMeses.SetFocus;
             Exit;
          End;}
          //
     Except
        on Exc:Exception do
        begin
           Application.MessageBox(PChar('Error ao tentar gerar relatorio!!!'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
        End;
     End;
    Finally
         BtImprimir.Enabled := True;
          Screen.Cursor := crDefault;
    End;
    Application.ProcessMessages;
end;

procedure TfrmCartas.Imprimir_Eleitor(iCodigo, iTela : integer);
begin
      If not (cdsDados.IsEmpty) Then
        begin
             with ppReport1 do
              begin
                   If FileExists(ExtractFilePath( Application.ExeName )+ udmConn.M_NMFILE) Then
                      ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmConn.M_NMFILE);
                   //
                   uFuncoes.FilterCDS(DMConn.cdsCartas, fsInteger, '1');
                   //
                   If not (DMConn.cdsCartas.IsEmpty) Then
                   begin
                         lblTitulo.Caption := DMConn.cdsCartasCAR_DESCRICAO.AsString;
                         lblEleitor.Caption := cdsDadosCLI_NOME.AsString;
                         txtTexto.lines.Clear;
                         txtTexto.lines.Add(DMConn.cdsCartasCAR_TEXTO.AsString);
                         lblData.Caption := DMConn.cdsConfigCFG_CIDADE.AsString + '('+
                                            DMConn.cdsConfigCFG_UF.AsString+'), '+ 
                                            uFuncoes.DataExtenso(Date);
                         //
                         If (iTela = 1) then
                         begin
                             DeviceType := 'Screen'; 
                             PrintReport;
                         End
                         Else
                         begin
                              DeviceType := 'Printer';  // => manda direto para a impressora
                              ShowPrintDialog := False;
                              //PrintReport;
                             Print;
                         End;
                   End;
              End;
        End;
end;

procedure TfrmCartas.BtImprimirClick(Sender: TObject);
begin
      Imprimir_Eleitor(cdsDadosCLI_CODIGO.AsInteger, 1);
end;

procedure TfrmCartas.grdConsultarDblClick(Sender: TObject);
begin
      BtImprimirClick(Sender);
end;

procedure TfrmCartas.Imprimir_Todos_Eleitor;
begin
     If not (cdsDados.IsEmpty) Then
      begin
           With cdsDados do
            begin
                 DisableControls;
                 First;
                 while not (Eof) do
                  begin
                       Imprimir_Eleitor(cdsDadosCLI_CODIGO.AsInteger, 2);
                       //
                       next;
                  End;
                 //
                 First;
                 EnableControls;  
            End;
      End;
end;

procedure TfrmCartas.btnTodosClick(Sender: TObject);
begin
      Imprimir_Todos_Eleitor;
end;

procedure TfrmCartas.btnCartaClick(Sender: TObject);
begin
      frmMain.AbreForm(TfrmCadCartas, frmCadCartas);
end;

procedure TfrmCartas.VISUALIZACAO;
Var
      MSWord: Variant;
      i : integer;
      M_DATA : String;
begin
      PostMessage(FindWindow(nil, 'TEMP - Microsoft Word'), WM_CLOSE,0,0);
      PostMessage(FindWindow(nil, 'INFOG2.DOC - Microsoft Word'), WM_CLOSE,0,0);
      If (fileexists(ExtractFilePath( Application.ExeName )+'INFOG2.DOC')) Then
          DeleteFile(ExtractFilePath( Application.ExeName )+'INFOG2.DOC');
      MSWord:= CreateOleObject ('Word.Basic'); //cria o objeto
      MSWord.AppShow; //mostra o word
      MSWord.FileOpen(ExtractFilePath( Application.ExeName )+'TEMP.DOC');
      //
      MSWord.Font('Arial'); //muda a fonte usada
      MSWord.FontSize(14); //muda o tamanho da fonte
      MSWord.CenterPara; //alinha ao centro
      //
      For i := 1 to 5 do
          MSWord.insert(#13);
      MSWord.Font('Arial'); //muda a fonte usada
      MSWord.bold; //coloca negrito
      MSWord.FontSize(12); //muda o tamanho da fonte
      MSWord.CenterPara; //alinha ao centro
      MSWord.insert(DMConn.cdsCartasCAR_DESCRICAO.AsString); //Escreve algo
      MSWord.bold(false);
      For i := 1 to 5 do
          MSWord.insert(#13);
      MSWord.Font('Arial'); //muda a fonte usada
      MSWord.FontSize(10); //muda o tamanho da fonte
      MSWord.JustifyPara;
      MSWord.bold(false);
      MSWord.insert('            Prezado(a) ' + cdsDadosCLI_NOME.AsString);
      MSWord.insert(#13);
      MSWord.insert(#13);
      MSWord.Font('Arial'); //muda a fonte usada
      MSWord.FontSize(10); //muda o tamanho da fonte
      MSWord.JustifyPara;
      MSWord.bold(false);
      MSWord.insert(DMConn.cdsCartasCAR_TEXTO.AsString);
      MSWord.insert(#13);
      MSWord.bold(false);
      For i := 1 to 4 do
          MSWord.insert(#13);
      MSWord.Font('Arial');
      MSWord.FontSize(10); //muda o tamanho da fonte
      MSWord.CenterPara;  //alinha esquerda
      MSWord.insert(#13+ DMConn.cdsConfigCFG_CIDADE.AsString + ' (' +
                    DMConn.cdsConfigCFG_UF.AsString +'), '
                   + lowercase(uFuncoes.DataExtenso(Date)));
                   //+DatetoStr(Date()));
                   {+' de '
                   +lowercase(uFuncoes.DataExtenso(Date))
                   +' de '+Copy(DatetoStr(Date),7,4)+'.');}
      //
      {MSWord.insert(#13);
      MSWord.insert(#13);
      MSWord.insert(#13);
      MSWord.insert(#13);}
      //
      MSWord.FileSaveAs(ExtractFilePath( Application.ExeName )+'INFOG2.DOC', 1); //Salva o arquivo
end;

procedure TfrmCartas.btnWordClick(Sender: TObject);
begin
    if not (cdsDados.IsEmpty) Then
     begin
         uFuncoes.FilterCDS(DMConn.cdsCartas, fsInteger, '1');
         VISUALIZACAO;
     End;
end;

procedure TfrmCartas.dsDadosDataChange(Sender: TObject; Field: TField);
begin
     btnTodos.Enabled   := cdsDados.RecordCount > 0;
     btnWord.Enabled    := cdsDados.RecordCount > 0;
     BtImprimir.Enabled := cdsDados.RecordCount > 0;
end;

end.
