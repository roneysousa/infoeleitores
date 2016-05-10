unit uFrmRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit;

type
  TfrmRelatorio = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edtDTINIC: TDateEdit;
    edtDTFINA: TDateEdit;
    Label2: TLabel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    RadioGroup1: TRadioGroup;
    procedure btnFecharClick(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;

implementation

{$R *.dfm}

procedure TfrmRelatorio.btnFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmRelatorio.edtDTINICExit(Sender: TObject);
begin
     If (edtDTINIC.Text <> '  /  /    ') Then
      begin
           try
              StrToDate(edtDTINIC.Text);
           except
              on EConvertError do
                begin
                    ShowMessage ('Data Inválida!');
                    edtDTINIC.SetFocus;
                End;
           end
      End;
end;

procedure TfrmRelatorio.edtDTFINAExit(Sender: TObject);
begin
     If (edtDTFINA.Text <> '  /  /    ') Then
      begin
           try
              StrToDate(edtDTFINA.Text);
              If (edtDTFINA.Date < edtDTFINA.Date) Then
                begin
                     ShowMessage ('Data final deve ser maior que a inicial.');
                     edtDTFINA.SetFocus;
                     Exit; 
                End;
           except
              on EConvertError do
                begin
                    ShowMessage ('Data Inválida!');
                    edtDTFINA.SetFocus;
                End;
           end
      End;
end;

procedure TfrmRelatorio.FormShow(Sender: TObject);
begin
      {edtDTINIC.Date := Date();
      edtDTFINA.Date := Date();}  
end;

end.
