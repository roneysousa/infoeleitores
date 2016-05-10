unit uFrmRelPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmRelatorio, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,
  FMTBcd, DB, SqlExpr, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, DBClient, Provider, ppVar;

type
  TfrmRelPedidos = class(TfrmRelatorio)
    dstRelatorio: TSQLDataSet;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    dsRelatorio: TDataSource;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine4: TppLine;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedidos: TfrmRelPedidos;

implementation

uses udmConn, uFuncoes;

{$R *.dfm}

procedure TfrmRelPedidos.btnImprimirClick(Sender: TObject);
begin
  inherited;
    btnImprimir.Enabled := False;
    try
       With cdsRelatorio do
        begin
             Close;
             CommandText := 'Select E.ele_codigo, E.ele_nome, P.PED_CODIGO, P.PED_DESCRICAO, P.PED_DTPEDIDO, P.PED_DTATENDIMENTO, P.ped_situacao from ELEITORES E ';
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

end.
