unit uFrmCadCartas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  TfrmCadCartas = class(TfrmCadastro)
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    dsCartas: TDataSource;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    cdsConsultarCAR_CODIGO: TIntegerField;
    cdsConsultarCAR_DESCRICAO: TStringField;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure edtConsultarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Registro;
    procedure Buscar(aCodigo : String);
  public
    { Public declarations }
  end;

var
  frmCadCartas: TfrmCadCartas;

implementation

uses udmConn, uFuncoes;

{$R *.dfm}

{ TfrmCadCartas }

procedure TfrmCadCartas.Buscar(aCodigo: String);
begin
     uFuncoes.FilterCDS(DMConn.cdsCartas, fsInteger, aCodigo);
end;

procedure TfrmCadCartas.Registro;
begin
     uFuncoes.RefreshCDS(DMConn.cdsConfig);
     With DMConn.cdsCartas do
         begin
              close;
              If (DMConn.cdsConfigCFG_CARTAS.AsInteger > 0) Then
                 Params[0].AsInteger :=  uFuncoes.mvcodigo('CAR_CODIGO','CARTAS')
              Else
                 Params[0].AsInteger :=  -1;
              Open;
              //
         End;
     //
     PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCadCartas.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     //
     With DMConn.cdsCartas do
      begin
           Append;
           FieldByName('CAR_CODIGO').AsInteger    := DMConn.cdsConfigCFG_CARTAS.AsInteger + 1;
      End;
     //
     dbeDescricao.SetFocus;
end;

procedure TfrmCadCartas.BtEditarClick(Sender: TObject);
begin
  if  not (DMConn.cdsCartas.IsEmpty)
    and (DMConn.cdsCartas.RecordCount > 0) then
  Begin
     DMConn.cdsCartas.Edit;
     dbeDescricao.setfocus;
  End;
  inherited;
end;

procedure TfrmCadCartas.BtExcluirClick(Sender: TObject);
begin
  if not (DMConn.cdsCartas.IsEmpty) and
     (DMConn.cdsCartas.RecordCount > 0)
     and (DMConn.cdsCartasCAR_CODIGO.AsInteger > 1) then
   begin
       //
       If Application.MessageBox('Deseja excluir este registro?' , 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       Begin
            //
            DMConn.cdsCartas.Delete;
            DMConn.cdsCartas.ApplyUpdates(0);
            //
            REGISTRO;
       end
       else
            Application.MessageBox('Não ha registro a ser excluido','ATENÇÃO',
              MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
   End;
  inherited;
end;

procedure TfrmCadCartas.BtCancelarClick(Sender: TObject);
begin
     DMConn.cdsCartas.Cancel;
     //
     If (DMConn.cdsCartas.IsEmpty) Then
       Close;
  inherited;
end;

procedure TfrmCadCartas.BtGravarClick(Sender: TObject);
begin
     If uFuncoes.Empty(dbeDescricao.Text) Then
       Begin
           Application.MessageBox('Digite o titulo da cartas.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDescricao.SetFocus;
           Exit;
       End;
     DMConn.Start;
     //
      try
          //
          If (DMConn.cdsCartas.State in [dsInsert]) Then
            begin
                 uFuncoes.RefreshCDS(DMConn.cdsConfig);
                 //
                 DMConn.cdsConfig.Edit;
                 DMConn.cdsConfigCFG_CARTAS.AsInteger :=
                   DMConn.cdsConfigCFG_CARTAS.AsInteger + 1;
                 DMConn.cdsConfig.ApplyUpdates(0);
                 DMConn.cdsCartasCAR_CODIGO.AsInteger :=
                   DMConn.cdsConfigCFG_CARTAS.AsInteger;
                 //
            End;
          //
          DMConn.cdsCartas.Post;
          DMConn.cdsCartas.ApplyUpdates(0);
          //
          DMConn.Comit(udmConn.Transc);
          //
          Application.MessageBox(PChar(MSG_OK),
              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
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
  inherited;
end;

procedure TfrmCadCartas.btnConsultarClick(Sender: TObject);
begin
     If not (cdsConsultar.IsEmpty) Then
     begin
       buscar(cdsConsultarCAR_CODIGO.AsString);
       PageControl1.ActivePageIndex := 0;
     End;
  inherited;
end;

procedure TfrmCadCartas.edtConsultarChange(Sender: TObject);
begin
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CAR_CODIGO, CAR_DESCRICAO from CARTAS';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (CAR_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(CAR_DESCRICAO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by CAR_DESCRICAO';
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

procedure TfrmCadCartas.FormShow(Sender: TObject);
begin
     REGISTRO;
     //
     If (DMConn.cdsCartas.IsEmpty) Then
          BtAdicionarClick(Sender);
  inherited;
end;

end.
