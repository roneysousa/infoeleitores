unit uFrmConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro, FMTBcd, DBClient, Provider, DB, SqlExpr, ComCtrls,
  Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  TfrmConfig = class(TfrmCadastro)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    dsConfig: TDataSource;
    Label3: TLabel;
    cmbUF: TDBComboBox;
    procedure BtEditarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses udmConn;

{$R *.dfm}

procedure TfrmConfig.BtEditarClick(Sender: TObject);
begin
  inherited;
    DMConn.cdsConfig.Edit;
end;

procedure TfrmConfig.BtCancelarClick(Sender: TObject);
begin
  inherited;
       DMConn.cdsConfig.Cancel;
       TabSheet2.TabVisible := False;
end;

procedure TfrmConfig.BtGravarClick(Sender: TObject);
begin
  inherited;
       DMConn.cdsConfig.ApplyUpdates(0);
       //
       TabSheet2.TabVisible := False;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
begin
  inherited;
      TabSheet2.TabVisible := False;
end;

end.
