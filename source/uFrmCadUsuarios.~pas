unit uFrmCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  TfrmCadUsuarios = class(TfrmCadastro)
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    dsUsuarios: TDataSource;
    Label3: TLabel;
    dbeCargo: TDBEdit;
    lbl_senha: TLabel;
    dbeSNATUA: TEdit;
    lbl_confirma: TLabel;
    edt_Confirma: TEdit;
    cdsConsultarSEN_CODIGO: TIntegerField;
    cdsConsultarSEN_NOME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dbeSNATUAExit(Sender: TObject);
    procedure edt_ConfirmaExit(Sender: TObject);
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Registro;
    procedure Buscar(iCodigo : String);
    procedure Exibir_edites;
    procedure Ocultar_edites;
    //procedure Botoes;
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;

implementation

uses udmConn, uFuncoes, frmMainEleitores;

{$R *.dfm}

procedure TfrmCadUsuarios.Buscar(iCodigo : String);
begin
     uFuncoes.FilterCDS(DMConn.cdsUsuarios, fsInteger, iCodigo);
end;

procedure TfrmCadUsuarios.Exibir_edites;
begin
     lbl_senha.Visible    := True;
     lbl_confirma.Visible := True;
     edt_Confirma.Visible := True;
     dbeSNATUA.Visible    := True;
     //
     edt_Confirma.Clear;
     dbeSNATUA.Clear;
end;

procedure TfrmCadUsuarios.FormShow(Sender: TObject);
begin
     REGISTRO;
     Ocultar_edites;
     //
     If ( DMConn.cdsUsuarios.IsEmpty) Then
          BtAdicionarClick(Sender)
     Else
     Begin
          If (DMConn.cdsUsuariosSEN_ADMIN.AsString = 'T') Then
              //btnAcesso.Visible := True
          Else
              //btnAcesso.Visible := False;
     End;
     //
     PageControl1.ActivePageIndex := 0;
  inherited;
end;

procedure TfrmCadUsuarios.Ocultar_edites;
begin
     lbl_senha.Visible    := False;
     lbl_confirma.Visible := False;
     //
     edt_Confirma.Visible := False;
     dbeSNATUA.Visible    := False;
end;

procedure TfrmCadUsuarios.Registro;
begin
     uFuncoes.RefreshCDS(DMConn.cdsConfig);
     With DMConn.cdsUsuarios do
         begin
              close;
              If (DMConn.cdsConfigCFG_USUARIOS.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('SEN_CODIGO','usuarios')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
         End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadUsuarios.dbeSNATUAExit(Sender: TObject);
begin
  inherited;
     If not uFuncoes.Empty(dbeSNATUA.Text) Then
        dbeSNATUA.Text := dbeSNATUA.Text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(dbeSNATUA.Text));
end;

procedure TfrmCadUsuarios.edt_ConfirmaExit(Sender: TObject);
begin
  inherited;
     If not uFuncoes.Empty(edt_Confirma.Text) Then
     Begin
       edt_Confirma.Text := edt_Confirma.Text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edt_Confirma.Text));
       //
       If ( edt_Confirma.Text = dbeSNATUA.Text) Then
            DMConn.cdsUsuariosSEN_SNATUA.AsString := uFuncoes.Codifica(edt_Confirma.Text)
       Else
       begin
            Application.MessageBox( 'A senha incorreta!','ATENÇÃO',
                          MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
            edt_Confirma.Clear;
            edt_Confirma.SetFocus;
            Exit;
       End;
  End;
end;

procedure TfrmCadUsuarios.BtAdicionarClick(Sender: TObject);
begin
  inherited;
  uFuncoes.RefreshCDS(DMConn.cdsConfig);
  //
  With DMConn.cdsUsuarios  do
  begin
       Append;
       FieldByName('SEN_CODIGO').AsInteger :=
           DMConn.cdsConfigCFG_USUARIOS.AsInteger + 1;
  End;
  Exibir_edites;
  dbeDescricao.SetFocus;
end;

procedure TfrmCadUsuarios.BtEditarClick(Sender: TObject);
begin
  if  not (DMConn.cdsUsuarios.IsEmpty)
    and (DMConn.cdsUsuarios.RecordCount > 0) then
  Begin
       //
       DMConn.cdsUsuarios.Edit;
       //
       If NOT (frmMainEleitores.admin) Then
       begin
           If (DMConn.cdsUsuarios.FieldByName('SEN_CODIGO').AsInteger <> StrtoInt(frmMainEleitores.M_CDUSUA)) Then
           begin
                Application.MessageBox(Pchar(frmMainEleitores.M_NMUSUA+  ' você não pode editar este usuário!!!'),'ATENÇÃO',
                  MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                DMConn.cdsUsuarios.Cancel;
                //tratabotoes;
                Exit;
           End;
       End;
       //
       Exibir_edites;
       dbeDescricao.SetFocus;
  End;
  inherited;
end;

procedure TfrmCadUsuarios.BtExcluirClick(Sender: TObject);
begin
  if not (DMConn.cdsUsuarios.IsEmpty) and
     (DMConn.cdsUsuarios.RecordCount > 0) then
   begin
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            //
            DMConn.cdsUsuarios.Delete;
            DMConn.cdsUsuarios.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
  inherited;
end;

procedure TfrmCadUsuarios.BtCancelarClick(Sender: TObject);
begin
     DMConn.cdsUsuarios.Cancel;
      Ocultar_edites;
     //
     If (DMConn.cdsUsuarios.IsEmpty) Then
       Close;
  inherited;

end;

procedure TfrmCadUsuarios.BtGravarClick(Sender: TObject);
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite o nome do usuário.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     //
     If (DMConn.cdsUsuarios.State in [dsInsert] ) Then
     begin
         If uFuncoes.Empty(dbeSNATUA.Text)  Then
           Begin
             Application.MessageBox('Digite sua senha.','ATENÇÃO',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             dbeSNATUA.SetFocus;
             Exit;
         End;
         //
       If uFuncoes.Empty(edt_Confirma.Text) Then
         Begin
             Application.MessageBox('Digite novamento sua senha.','ATENÇÃO',
                 MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             edt_Confirma.SetFocus;
             Exit;
         End;
       End;
     //
     uFuncoes.RefreshCDS( DMConn.cdsConfig);
     //
      try
          //
          if (DMConn.cdsUsuarios.State in [dsinsert]) then
            begin

                 DMConn.CdsConfig.Edit;
                 DMConn.cdsConfig.FieldByName('CFG_USUARIOS').AsInteger :=
                      DMConn.cdsConfig.FieldByName('CFG_USUARIOS').AsInteger + 1;
                 DMConn.cdsUsuarios.FieldByName('SEN_CODIGO').AsInteger :=
                      DMConn.cdsConfig.FieldByName('CFG_USUARIOS').AsInteger;
                 DMConn.CdsConfig.ApplyUpdates(0);
                 //
             end;
          //
          DMConn.cdsUsuarios.ApplyUpdates(0);
          Ocultar_edites;
          //
          Application.MessageBox(PChar(MSG_OK),
            'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               BtCancelarClick(Sender);
            End;
     End;

  inherited;
end;

end.
