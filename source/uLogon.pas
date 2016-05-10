unit uLogon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, RxLookup, FMTBcd, DB,
  SqlExpr, jpeg;

type
  TfrmLogon = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image3: TImage;
    edt_SENHA: TEdit;
    edtCDUSUA: TEdit;
    Image1: TImage;
    qryLogado: TSQLQuery;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edt_SENHAExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_SENHAKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDUSUAExit(Sender: TObject);
    procedure edtCDUSUAKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
     M_FECHA: Boolean;
     procedure ACESSO(W_CDUSUA, W_SNATUA : String);
     procedure CONSULTA;
     function LOGADO(M_CDUSUA : INTEGER) : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

Const
      M_USERMASTER = '000';
      M_SNMASTER   = 'ADMG2';

var
  frmLogon: TfrmLogon;
  M_QTTENT, codigoUsuario : Integer;
  M_FLUSUA, administrador : boolean;
  nomeUsuario : String;


implementation

uses uFuncoes, frmMainEleitores, udmConn;

{$R *.DFM}

Function GetStateK (Key: integer): boolean;
begin
  Result := Odd (GetKeyState (Key));
end;

procedure TfrmLogon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      If Not M_FECHA Then
          Action := caNone
      Else
          Action := caFree;
     //
     // Se estiver em branco sai do programa
     If uFuncoes.Empty(edtCDUSUA.Text) or
        uFuncoes.Empty(edt_SENHA.text) Then
     Begin
          Application.Terminate;
          DMConn.qryUsuarios.Close;
     End;
     //
     Action := caFree;
end;

procedure TfrmLogon.btCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmLogon.FormActivate(Sender: TObject);
begin
     M_QTTENT:=0;
     //
     edtCDUSUA.SetFocus;
end;

procedure TfrmLogon.edt_SENHAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt_Senha.text) Then
        edt_Senha.text := edt_Senha.text+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(edt_Senha.text));
end;

procedure TfrmLogon.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      If GetStateK (VK_LMENU) And (Key = VK_F4) Then
          M_FECHA := False;
end;

procedure TfrmLogon.edt_SENHAKeyPress(Sender: TObject; var Key: Char);
begin
     If (key = #27) Then
     Begin
         key:=#0;
         Application.Terminate;
     End;
     //
     If (Key =#13) and not uFuncoes.Empty(edtCDUSUA.Text)
        and not uFuncoes.Empty(edt_SENHA.Text) Then
     begin
          Key := #0;
          ACESSO(edtCDUSUA.Text, edt_SENHA.Text);
     End;
end;

procedure TfrmLogon.ACESSO(W_CDUSUA, W_SNATUA: String);
Var
   M_ACHOU :boolean;
begin
     // SE nome do usuario estiver vazio
     If uFuncoes.Empty(edtCDUSUA.Text) Then
     begin
          Application.MessageBox('Digite o código de usuário.',
          'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
          edtCDUSUA.SetFocus;
          Exit;
     end;
     //
     // Se a senha do usuario estiver vazio
     If uFuncoes.Empty(edt_SENHA.Text) Then
     begin
          Application.MessageBox('Digite sua senha de usuário.',
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
          edt_SENHA.SetFocus;
          Exit;
     end;
     //
  Try
     M_QTTENT:=M_QTTENT+1;
     W_CDUSUA := edtCDUSUA.Text;
     W_SNATUA := edt_SENHA.Text;
     W_SNATUA := W_SNATUA+uFuncoes.Replicate('_',6-uFuncoes.ContaCaracs(W_SNATUA));
     W_SNATUA := uFuncoes.Codifica(W_SNATUA);
     //
     uFuncoes.RefreshCDS(DmConn.cdsConfig);
     // Se Super-Usuário
     If (edtCDUSUA.Text = frmMainEleitores.M_USERMASTER) and (M_QTTENT<=3) Then
     begin
          If (edt_SENHA.Text = frmMainEleitores.M_SNMASTER) Then
          Begin
              codigoUsuario := 1;
              nomeUsuario   := 'USERMASTER';
              administrador := true;
              frmMainEleitores.M_CDUSUA := uFuncoes.StrZero(InttoStr(codigoUsuario),3);
              frmMainEleitores.M_NMUSUA := nomeUsuario;
              frmMainEleitores.admin    := administrador; 
              //frmMainEleitores.M_FLLOGI := True;
              //frmMainEleitores.M_FLMAST := 1;
              M_FLUSUA := True;
              ModalResult := mrOk;
              //
              Close;
              Exit;
          End
          Else
          Begin
              Application.MessageBox('Senha inválida!!!',
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              edt_SENHA.Clear;
              edt_SENHA.SetFocus;
              Exit;
          End;
     End;
     //
     With DMConn.qryUsuarios do
     Begin
          Close;
          //
          Params.ParamByName('pCODIGO').AsInteger := StrtoInt(edtCDUSUA.Text);
          //
          Open;
     End;
     // Procura usuário
     If (M_QTTENT<=3) Then
     begin
          If (DMConn.qryUsuarios.FieldByName('SEN_SNATUA').AsString <> W_SNATUA) Then
          begin
                 Application.MessageBox('Senha inválida!!!',
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 edt_SENHA.Clear;
                 edt_SENHA.SetFocus;
                 Exit;
          end
          else
          begin
               codigoUsuario := DMConn.qryUsuarios.FieldByName('SEN_CODIGO').AsInteger;
               nomeUsuario   := DMConn.qryUsuarios.FieldByName('SEN_NOME').AsString;
               frmMainEleitores.M_CDUSUA := InttoStr(codigoUsuario);
               frmMainEleitores.M_NMUSUA := nomeUsuario;
               frmMainEleitores.M_SNATUA := DMConn.qryUsuarios.FieldByName('SEN_SNATUA').AsString;
               frmMainEleitores.M_FLLOGI := True;
               frmMainEleitores.M_FLMAST := 0;
               //
               DMConn.cdsUsuarios.Close;
               {With dm.dstUsuarios do
               Begin
                    Active := False;
                    CommandText := 'Select * from USUARIOS Where (SEN_CODIGO = :pCODIGO)';
                    Params.ParamByName('pCODIGO').AsInteger := StrtoInt(uPrincFolha.M_CDUSUA);
                    Active := True;
               End;
               dm.cdsUsuarios.FetchParams;}
               DMConn.cdsUsuarios.Params.ParamByName('pCODIGO').AsInteger := StrtoInt(frmMainEleitores.M_CDUSUA);
               DMConn.cdsUsuarios.Open;
               DMConn.cdsUsuarios.Edit;
               //
               DMConn.cdsUsuariosSEN_DTATUAL.AsDateTime := Date();
               if (DMConn.cdsUsuariosSEN_ADMIN.AsString = 'T') Then
                Begin
                  administrador  := true;
                  frmMainEleitores.admin := True;
                End
               Else
                begin
                  administrador  := False;
                  frmMainEleitores.admin := False;
                End;
               // Getcomputer;
               DMConn.cdsUsuarios.Post;
               DMConn.cdsUsuarios.ApplyUpdates(0);
               //
               M_FLUSUA := True;
               //
               ModalResult := mrOk;
          end;
          //
     End
     Else
     begin
          Application.MessageBox('O Sistema será Fechado!',
                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          Application.Terminate;
     End;
   Except
        on Exc:Exception do
        begin
              Application.MessageBox(PChar('Erro ao acessar o sistema!!!'
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              //
             Close;
        End;
   End;
end;

procedure TfrmLogon.CONSULTA;
begin
     With DMConn.qryUsuarios do
     Begin
          Close;
          //
          Params.ParamByName('pCODIGO').AsInteger := StrtoInt(edtCDUSUA.Text);
          //
          Open;
     End;
     //
     If (DMConn.qryUsuarios.IsEmpty) Then
     Begin
          Application.MessageBox('Registro de usuário não cadastrado!!!','ATENÇÃO',
                              MB_OK+MB_ICONSTOP+MB_APPLMODAL);
          DMConn.qryUsuarios.Close;
          edtCDUSUA.Clear;
          edtCDUSUA.SetFocus;
          Exit;
     End
     Else
         edt_SENHA.SetFocus;
end;

procedure TfrmLogon.edtCDUSUAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtCDUSUA.Text) Then
     begin
          {If (LOGADO(StrtoInt(edtCDUSUA.Text)) = True) Then
            begin
                 Application.MessageBox('Usuário já está acessando o sistema!!!' ,
                   'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
                 edtCDUSUA.Clear;
                 edtCDUSUA.SetFocus;
                 Exit;
            End;}
          //
          edtCDUSUA.Text := uFuncoes.StrZero(edtCDUSUA.Text,3);
          CONSULTA;
     End;
end;

procedure TfrmLogon.edtCDUSUAKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13, #27] ) then
        key:=#0;
    //
    If (key = #27) Then
    Begin
         key:=#0;
         Application.Terminate;
    End;
    //
    If (key = #13) and uFuncoes.Empty(edtCDUSUA.Text) Then
    Begin
         key:=#0;
         //
         edtCDUSUA.Text := '000';
         edt_SENHA.SetFocus; 
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edtCDUSUA.Text) Then
    Begin
         key:=#0;
         //
         CONSULTA;
    End;
end;

procedure TfrmLogon.FormShow(Sender: TObject);
begin
     M_FLUSUA := False;
     M_QTTENT := 0;
     //
     edtCDUSUA.SetFocus;
end;

function TfrmLogon.LOGADO(M_CDUSUA: INTEGER): Boolean;
begin
     With qryLogado do
     Begin
          Close;
          //
          Params.ParamByName('pCODIGO').AsInteger := StrtoInt(edtCDUSUA.Text);
          //
          Open;
     End;
     //
     If not (qryLogado.IsEmpty) Then
     Begin
          If (qryLogado.FieldByName('SEN_DTATUAL').AsDateTime = Date()) Then
              result := True
          Else
              result := False;
     End;
     //
     qryLogado.Close;
end;

procedure TfrmLogon.Image2Click(Sender: TObject);
begin
      Application.Terminate;  
end;

End.
