unit uFrmRelClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmRelatorio, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,
  FMTBcd, DB, DBClient, Provider, SqlExpr, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache, ppVar, ppCtrls,
  ppPrnabl;

type
  TfrmRelClientes = class(TfrmRelatorio)
    dstRelatorio: TSQLDataSet;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    dsRelatorio: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    cdsRelatorioELE_CODIGO: TIntegerField;
    cdsRelatorioELE_NOME: TStringField;
    cdsRelatorioELE_NRIDENTIDADE: TStringField;
    cdsRelatorioELE_NRFONE: TStringField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    cdsRelatorioFONE: TStringField;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine4: TppLine;
    procedure btnImprimirClick(Sender: TObject);
    procedure cdsRelatorioCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelClientes: TfrmRelClientes;

implementation

uses udmConn, uFuncoes;

{$R *.dfm}

procedure TfrmRelClientes.btnImprimirClick(Sender: TObject);
begin
  inherited;
    btnImprimir.Enabled := False;
    try
       With cdsRelatorio do
        begin
             Close;
             CommandText := 'select ELE_CODIGO, ELE_NOME, ELE_NRIDENTIDADE, ELE_NRFONE from ELEITORES E ';
             CommandText := CommandText + 'inner JOIN PEDIDOS P ON P.ped_cliente = E.ele_codigo ';
             If (RadioGroup1.ItemIndex = 0) Then
                CommandText := CommandText + 'Where (P.ped_situacao = '+QuotedStr('S')+')'
             Else
                CommandText := CommandText + 'Where (P.ped_situacao = '+QuotedStr('N')+')';
             //
             if (edtDTINIC.Text <> '  /  /    ' ) Then
              begin
                CommandText := CommandText + ' and (P.PED_DTPEDIDO >= :pDTINIC)';
                Params.ParamByName('pDTINIC').AsDateTime := edtDTINIC.Date;
              End;
             //
             if (edtDTFINA.Text <> '  /  /    ' ) Then
             begin
                CommandText := CommandText + ' and (P.PED_DTPEDIDO <= :pDTFINA)';
                Params.ParamByName('pDTFINA').AsDateTime := edtDTFINA.Date;
             End;
             //
             CommandText := CommandText + ' Group by  ELE_CODIGO, ELE_NOME, ELE_NRIDENTIDADE, ELE_NRFONE';
             Open;
             //
             If not (IsEmpty) Then
              begin
                   With ppReport1 do
                   begin
                        If FileExists(ExtractFilePath( Application.ExeName )+ udmConn.M_NMFILE) Then
                             ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmConn.M_NMFILE);
                        //
                        If (RadioGroup1.ItemIndex = 0) Then
                          ppLabel2.Caption := 'SITUAÇÃO : ATENDIDOS'
                        Else
                          ppLabel2.Caption := 'SITUAÇÃO : NÃO ATENDIDOS';
                        //
                        ppLabel7.Caption := 'PERÍODO : ';
                        if (edtDTINIC.Text <> '  /  /    ' ) Then
                           ppLabel7.Caption := ppLabel7.Caption + edtDTINIC.Text;
                        if (edtDTFINA.Text <> '  /  /    ' ) Then
                           ppLabel7.Caption := ppLabel7.Caption + ' À '+edtDTFINA.Text;

                        PrintReport;
                   End;
              End
             Else
                ShowMessage('Não dados para esta consulta.');
        End;
    Finally
         btnImprimir.Enabled := True;
    End;
end;

procedure TfrmRelClientes.cdsRelatorioCalcFields(DataSet: TDataSet);
begin
  inherited;
      If not uFuncoes.Empty(cdsRelatorioELE_NRFONE.AsString) Then
          cdsRelatorioFONE.AsString := uFuncoes.FormataFONE(cdsRelatorioELE_NRFONE.AsString);
end;

end.
