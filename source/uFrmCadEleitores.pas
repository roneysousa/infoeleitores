unit uFrmCadEleitores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask, ToolEdit,
  RXDBCtrl;

type
  TfrmCadEleitores = class(TfrmCadastro)
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    deEleitores: TDataSource;
    Label3: TLabel;
    dbeCPF: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    dbeDataNasc: TDBDateEdit;
    Label9: TLabel;
    dbeEndereco: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    dbeBairro: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    cmbUF: TDBComboBox;
    cdsConsultarELE_CODIGO: TIntegerField;
    cdsConsultarELE_NOME: TStringField;
    cdsConsultarELE_ENDERECO: TStringField;
    cdsConsultarELE_NRFONE: TStringField;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    Label18: TLabel;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnDelete: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    dsPedidos: TDataSource;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    dbeDescricaoPedido: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label22: TLabel;
    DBText2: TDBText;
    dbeDtPedido: TDBDateEdit;
    dbeDtAtendimento: TDBDateEdit;
    dbGridPedidos: TDBGrid;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure dbeCPFExit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure dbeCPFKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDataNascExit(Sender: TObject);
    procedure dsPedidosDataChange(Sender: TObject; Field: TField);
    procedure dsPedidosStateChange(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dbeDtPedidoExit(Sender: TObject);
    procedure dbeDtAtendimentoExit(Sender: TObject);
  private
    { Private declarations }
    procedure Registro;
    procedure Buscar(aCodigo : String);
  public
    { Public declarations }
  end;

var
  frmCadEleitores: TfrmCadEleitores;

implementation

uses udmConn, uFuncoes;

{$R *.dfm}

procedure TfrmCadEleitores.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     //
     With DMConn.cdsEleitores do
      begin
           Append;
           FieldByName('ELE_CODIGO').AsInteger    := DMConn.cdsConfigCFG_ELEITOR.AsInteger + 1;
      End;
     //
     TabSheet3.TabVisible := False;
     dbeDescricao.SetFocus;
end;

procedure TfrmCadEleitores.BtEditarClick(Sender: TObject);
begin
  if  not (DMConn.cdsEleitores.IsEmpty)
    and (DMConn.cdsEleitores.RecordCount > 0) then
  Begin
     TabSheet3.TabVisible := False;
     DMConn.cdsEleitores.Edit;
     dbeDescricao.setfocus;
  End;
  inherited;
end;

procedure TfrmCadEleitores.BtExcluirClick(Sender: TObject);
begin
  if not (DMConn.cdsEleitores.IsEmpty) and
     (DMConn.cdsEleitores.RecordCount > 0) then
   begin
       //
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclus�o de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            //
            DMConn.cdsEleitores.Delete;
            DMConn.cdsEleitores.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('N�o ha registro a ser excluido','ATEN��O',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
  inherited;
end;

procedure TfrmCadEleitores.BtCancelarClick(Sender: TObject);
begin
     DMConn.cdsEleitores.Cancel;
     TabSheet3.TabVisible := True;
     //
     If (DMConn.cdsEleitores.IsEmpty) Then
       Close;
  inherited;

end;

procedure TfrmCadEleitores.BtGravarClick(Sender: TObject);
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite o nome do eleitor.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeEndereco.Text) Then
       Begin
           Application.MessageBox('Digite o endere�o.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeEndereco.SetFocus;
           Exit;
       End;
     //
     If uFuncoes.Empty(dbeBairro.Text) Then
       Begin
           Application.MessageBox('Digite o bairro do cliente.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeBairro.SetFocus;
           Exit;
       End;
     //
     DMConn.Start;
     //
      try
          //
          If (DMConn.cdsEleitores.State in [dsInsert]) Then
            begin
                 uFuncoes.RefreshCDS(DMConn.cdsConfig);
                 //
                 DMConn.cdsConfig.Edit;
                 DMConn.cdsConfigCFG_ELEITOR.AsInteger :=
                   DMConn.cdsConfigCFG_ELEITOR.AsInteger + 1;
                 DMConn.cdsConfig.ApplyUpdates(0);
                 DMConn.cdsEleitoresELE_CODIGO.AsInteger :=
                   DMConn.cdsConfigCFG_ELEITOR.AsInteger;
                 //
            End;
          //
          DMConn.cdsEleitores.Post;
          DMConn.cdsEleitores.ApplyUpdates(0);
          //
          DMConn.Comit(udmConn.Transc);
          TabSheet3.TabVisible := True;
          //
          Application.MessageBox(PChar(MSG_OK),
              'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          //
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               BtCancelarClick(Sender);
               //
               DMConn.Rollback;
            End;
     End;
   //
  inherited;
end;

procedure TfrmCadEleitores.Buscar(aCodigo : String);
begin
     uFuncoes.FilterCDS(DMConn.cdsEleitores, fsInteger, aCodigo);
end;

procedure TfrmCadEleitores.Registro;
begin
     uFuncoes.RefreshCDS(DMConn.cdsConfig);
     With DMConn.cdsEleitores do
         begin
              close;
              If (DMConn.cdsConfigCFG_ELEITOR.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('ELE_CODIGO','ELEITORES')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
              //
         End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadEleitores.FormShow(Sender: TObject);
begin
     REGISTRO;
     //
     dbGridPedidos.Align := alClient; 
     //
     If (DMConn.cdsEleitores.IsEmpty) Then
          BtAdicionarClick(Sender);
  inherited;
end;

procedure TfrmCadEleitores.btnConsultarClick(Sender: TObject);
begin
  inherited;
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar(cdsConsultarELE_CODIGO.AsString);
       PageControl1.ActivePageIndex := 0;
     End;
end;

procedure TfrmCadEleitores.edtConsultarChange(Sender: TObject);
begin
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select ELE_CODIGO, ELE_NOME, ELE_NRFONE, ELE_ENDERECO from ELEITORES ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (ELE_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(ELE_NOME) like :pNOME)';
            end;
            CommandText := CommandText + ' order by ELE_NOME';
            case rgConsultar.ItemIndex of
                0: datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtConsultar.Text;
                1: datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            end;
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
  inherited;
end;

procedure TfrmCadEleitores.dbeCPFExit(Sender: TObject);
begin
    If (DMConn.cdsEleitores.State in [dsInsert])
     and not uFuncoes.Empty(dbeCPF.Text) Then
      begin
            if (dbeCPF.Text = '00000000000') Then
             begin
                  dbeCPF.SetFocus;
                  //dbeCPF.Clear;
                  raise Exception.Create('CPF inv�lido!!!');
             End;
            //
            Try
              If not (uFuncoes.CPF(uFuncoes.RemoveChar(dbeCPF.Text))) Then
              Begin
                  //dbeCPF.Clear;
                  dbeCPF.SetFocus;
                  raise Exception.Create('CPF inv�lido!!!');
              End;
              //
              {If (DMConn.GetCPFCliente(dbeCPF.Text)) Then
                begin
                    //dbeCPF.Clear;
                    dbeCPF.SetFocus;
                    raise Exception.Create('CPF j� cadastro.');
                End;}
              //
            Except
              dbeCPF.SetFocus;
              //dbeCPF.Clear;
            End;
            //
      End;
      //
    // Edi��o
    If (DMConn.cdsEleitores.State in [dsEdit])
     and not uFuncoes.Empty(dbeCPF.Text) Then
      begin
            if (dbeCPF.Text = '00000000000') Then
             begin
                  dbeCPF.SetFocus;
                  //dbeCPF.Clear;
                  raise Exception.Create('CPF inv�lido!!!');
             End;
             //
            Try
              If not (uFuncoes.CPF(uFuncoes.RemoveChar(dbeCPF.Text))) Then
              Begin
                  //dbeCPF.Clear;
                  dbeCPF.SetFocus;
                  raise Exception.Create('CPF inv�lido!!!');
              End;
            Except
              dbeCPF.SetFocus;
              //dbeCPF.Clear;
            End;
            //
      End;
      //
     {If (DMConn.cdsEleitores.State in [dsInsert]) and not uFuncoes.Empty(dbeCPF.Text) Then
            If (dmAdmDados.Validar_Cliente(dmAdmDados.cdsClientesCLI_NOME.AsString,
                      dmAdmDados.cdsClientesCLI_CPF.AsString,' ',' ')) Then
              begin
                   dbeCPF.SetFocus;
                   //dbeCPF.Clear;
                   //
                   raise Exception.Create('Cliente j� cadastro com este CPF.');
              End;}
  inherited;
end;

procedure TfrmCadEleitores.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
end;

procedure TfrmCadEleitores.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
end;

procedure TfrmCadEleitores.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
end;

procedure TfrmCadEleitores.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
end;

procedure TfrmCadEleitores.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
end;

procedure TfrmCadEleitores.dbeCPFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
end;

procedure TfrmCadEleitores.dbeDataNascExit(Sender: TObject);
begin
  inherited;
     if (DMConn.cdsEleitores.State in [dsInsert, dsEdit])
     and (dbeDataNasc.Text <> '  /  /    ') Then
      begin
          try
              StrToDate(dbeDataNasc.Text);
          except
              on EConvertError do
                    ShowMessage ('Data Inv�lida!');
              end
          End;
end;

procedure TfrmCadEleitores.dsPedidosDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
      dbGridPedidos.Visible := dsPedidos.State in [dsBrowse]; 
end;

procedure TfrmCadEleitores.dsPedidosStateChange(Sender: TObject);
begin
  inherited;
      btnNovo.Enabled   := dsPedidos.State in [dsBrowse];
      btnEditar.Enabled := dsPedidos.State in [dsBrowse];
      btnDelete.Enabled := dsPedidos.State in [dsBrowse];
      //
      btnSalvar.Enabled   := dsPedidos.State in [dsInsert, dsEdit];
      btnCancelar.Enabled := dsPedidos.State in [dsInsert, dsEdit];
end;

procedure TfrmCadEleitores.TabSheet3Show(Sender: TObject);
begin
  inherited;
        DMConn.Selecionar_Pedido(DMConn.cdsEleitoresELE_CODIGO.AsInteger);
end;

procedure TfrmCadEleitores.btnNovoClick(Sender: TObject);
begin
  inherited;
     //
     uFuncoes.RefreshCDS(DMConn.cdsConfig);
     With DMConn.cdsPedidos do
      begin
           Append;
           FieldByName('PED_CODIGO').AsInteger    := DMConn.cdsConfigCFG_PEDIDO.AsInteger + 1;
           FieldByName('PED_CLIENTE').AsInteger   := DMConn.cdsEleitoresELE_CODIGO.AsInteger;
           FieldByName('PED_DTPEDIDO').AsDateTime := Date();
           FieldByName('PED_SITUACAO').AsString   := 'N';
      End;
     //
     TabSheet1.TabVisible := False;
     TabSheet2.TabVisible := False;
     //
     dbeDescricaoPedido.SetFocus;
end;

procedure TfrmCadEleitores.btnCancelarClick(Sender: TObject);
begin
  inherited;
     DMConn.cdsPedidos.Cancel;
     //
     TabSheet1.TabVisible := True;
     TabSheet2.TabVisible := True; 
end;

procedure TfrmCadEleitores.btnEditarClick(Sender: TObject);
begin
      if  not (DMConn.cdsPedidos.IsEmpty)
          and (DMConn.cdsPedidos.RecordCount > 0) then
      Begin
           TabSheet1.TabVisible := False;
           TabSheet2.TabVisible := False;
           //
           DMConn.cdsPedidos.Edit;
           dbeDescricaoPedido.setfocus;
      End;
  inherited;
end;

procedure TfrmCadEleitores.btnDeleteClick(Sender: TObject);
begin
  if not (DMConn.cdsPedidos.IsEmpty) and
     (DMConn.cdsPedidos.RecordCount > 0) then
   begin
       //
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclus�o de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            //
            DMConn.cdsPedidos.Delete;
            DMConn.cdsPedidos.ApplyUpdates(0);
            //
            //REGISTRO;
       end;
   End;
  inherited;
end;

procedure TfrmCadEleitores.btnSalvarClick(Sender: TObject);
begin
     If uFuncoes.Empty(dbeDescricaoPedido.Text) Then
       Begin
           Application.MessageBox('Digite a descri��o do pedido.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricaoPedido.SetFocus;
           Exit;
       End;
     //
     If (dbeDtPedido.Text = '  /  /    ') Then
       Begin
           Application.MessageBox('Digite a data do pedido.','ATEN��O',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDtPedido.SetFocus;
           Exit;
       End;
     //
     uFuncoes.RefreshCDS(DMConn.cdsConfig);
     //
     DMConn.Start;
     //
      try
          //
          If (DMConn.cdsPedidos.State in [dsInsert]) Then
            begin
                 //
                 DMConn.cdsConfig.Edit;
                 DMConn.cdsConfigCFG_PEDIDO.AsInteger :=
                   DMConn.cdsConfigCFG_PEDIDO.AsInteger + 1;
                 DMConn.cdsConfig.ApplyUpdates(0);
                 //
                 DMConn.cdsPedidosPED_CODIGO.AsInteger :=
                   DMConn.cdsConfigCFG_PEDIDO.AsInteger;
                 //
            End;
          //
          DMConn.cdsPedidos.Post;
          DMConn.cdsPedidos.ApplyUpdates(0);
          //
          DMConn.Comit(udmConn.Transc);
          //
          TabSheet1.TabVisible := True;
          TabSheet2.TabVisible := True;
          //
          Application.MessageBox(PChar(MSG_OK),
              'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          //
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               btnCancelarClick(Sender);
               //
               DMConn.Rollback;
            End;
     End;
  inherited;
end;

procedure TfrmCadEleitores.dbeDtPedidoExit(Sender: TObject);
begin
  inherited;
     if (DMConn.cdsPedidos.State in [dsInsert, dsEdit])
      and (dbeDtPedido.Text <> '  /  /    ') Then
      begin
          try
              StrToDate(dbeDtPedido.Text);
          except
              on EConvertError do
                    ShowMessage ('Data Inv�lida!');
              end
          End;
end;

procedure TfrmCadEleitores.dbeDtAtendimentoExit(Sender: TObject);
begin
  inherited;
     if (DMConn.cdsPedidos.State in [dsInsert, dsEdit])
      and (dbeDtAtendimento.Text <> '  /  /    ') Then
      begin
          try
              StrToDate(dbeDtAtendimento.Text);
          except
              on EConvertError do
                    ShowMessage ('Data Inv�lida!');
              end
          End;
end;

End.
