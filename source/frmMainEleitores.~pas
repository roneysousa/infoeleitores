unit frmMainEleitores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, ToolWin, ExtCtrls, FMTBcd, DB, SqlExpr, ImgList,
  jpeg;

type
  TfrmMain = class(TForm)
    info: TStatusBar;
    mmPrincipal: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuEleitoresItem: TMenuItem;
    N1: TMenuItem;
    mnuSairItem: TMenuItem;
    mnuRelatroios: TMenuItem;
    mnuUtilitraios: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    imgLogon: TImage;
    mnuAjuda: TMenuItem;
    mnuSobreItem: TMenuItem;
    dataSetAux: TSQLDataSet;
    dataSetAux2: TSQLDataSet;
    mnuPedidosItem: TMenuItem;
    mnuRelEleitoresItem: TMenuItem;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    mnuUsuariosItem: TMenuItem;
    N2: TMenuItem;
    mnuCartaItem: TMenuItem;
    ToolButton5: TToolButton;
    Configuraes1: TMenuItem;
    procedure mnuSairItemClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure mnuEleitoresItemClick(Sender: TObject);
    procedure mnuUsuariosItemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuPedidosItemClick(Sender: TObject);
    procedure mnuRelEleitoresItemClick(Sender: TObject);
    procedure mnuCartaItemClick(Sender: TObject);
    procedure mnuSobreItemClick(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetJustify(Menu: TMenu; MenuItem: TMenuItem; Justify: Byte);
  public
    { Public declarations }
    Procedure AbreForm(aClasseForm: TComponentClass; aForm : TForm);
    procedure DisplayHint(Sender: TObject);
  end;

const
     ScreenWidth: LongInt = 800; {I designed my form in 800x600 mode.}
     ScreenHeight: LongInt = 600;
     M_USERMASTER = '000';
     M_SNMASTER   = 'ADMG2';

var
  frmMain: TfrmMain;
  admin : Boolean;
  M_CDUSUA, M_NMUSUA, M_SNATUA : String;
  M_FLLOGI : boolean;
  M_FLMAST : integer;

implementation

uses uFrmCadEleitores, uFrmCadUsuarios, uFuncoes, uFrmRelPedidos,
  uFrmRelClientes, uFrmCartas, uFrmSobre, uFrmConfiguracoes;

{$R *.dfm}

{ TfrmMain }

procedure TfrmMain.AbreForm(aClasseForm: TComponentClass; aForm: TForm);
begin
      Application.CreateForm(aClasseForm, aForm);
      try
          aForm.ShowModal;
      Finally
          aForm.Free;
      End;
end;

procedure TfrmMain.mnuSairItemClick(Sender: TObject);
begin
     If Application.MessageBox('Sair do sistema?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
          Application.Terminate;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     CanClose := False;
     If Application.MessageBox('Sair do sistema?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
     begin
          CanClose := True;
          Application.Terminate;
     End;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
Var
   aFile : String;
begin
      DecimalSeparator  := ',';        // determina o separador decimal de números.
      ThousandSeparator := '.';       // define o separador de milhar de um número.
      //
      scaled := true;
      if (screen.width <> ScreenWidth) then
      begin
            height := longint(height) * longint(screen.height) DIV ScreenHeight;
            width := longint(width) * longint(screen.width) DIV ScreenWidth;
            scaleBy(screen.width, ScreenWidth);
      end;
      //

      aFile := ExtractFilePath( Application.ExeName) +'logo.jpeg';
      // ExtractFilePath( Application.ExeName +'logo.jpeg')
      if FileExists(aFile) Then
           imgLogon.Picture.LoadFromFile(aFile);

      //
      //dmDados.Parametros;
      Application.OnHint := DisplayHint;
      SetJustify(mmPrincipal,mnuAjuda,1);
      //
      imgLogon.Left := (frmMain.Width Div 2) - (imgLogon.Width Div 2);
      imgLogon.Top  := (frmMain.Height Div 2) - (imgLogon.Height Div 2 + Info.Height);

end;

procedure TfrmMain.DisplayHint(Sender: TObject);
begin
     info.Panels[1].Text := Application.Hint;
end;

procedure TfrmMain.SetJustify(Menu: TMenu; MenuItem: TMenuItem;
  Justify: Byte);
var
    ItemInfo: TMenuItemInfo;
    Buffer: array[0..80] of Char;
begin
     ItemInfo.cbSize := SizeOf(TMenuItemInfo);
     ItemInfo.fMask := MIIM_TYPE;
     ItemInfo.dwTypeData := Buffer;
     ItemInfo.cch := SizeOf(Buffer);
     //
     GetMenuItemInfo(Menu.Handle, MenuItem.Command, False, ItemInfo);
     if Justify = 1 then
        ItemInfo.fType := ItemInfo.fType or MFT_RIGHTJUSTIFY;
     SetMenuItemInfo(Menu.Handle, MenuItem.Command, False, ItemInfo);
end;

procedure TfrmMain.mnuEleitoresItemClick(Sender: TObject);
begin
     AbreForm(TfrmCadEleitores, frmCadEleitores);
end;

procedure TfrmMain.mnuUsuariosItemClick(Sender: TObject);
begin
       AbreForm(TfrmCadUsuarios, frmCadUsuarios); 
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
    // Barra de status
    Info.Panels[0].Text := uFuncoes.StrZero(M_CDUSUA,3) + ' - '+ M_NMUSUA;
end;

procedure TfrmMain.mnuPedidosItemClick(Sender: TObject);
begin
      AbreForm(TfrmRelPedidos, frmRelPedidos); 
end;

procedure TfrmMain.mnuRelEleitoresItemClick(Sender: TObject);
begin
     AbreForm(TfrmRelClientes, frmRelClientes);
end;

procedure TfrmMain.mnuCartaItemClick(Sender: TObject);
begin
     AbreForm(TfrmCartas, frmCartas);
end;

procedure TfrmMain.mnuSobreItemClick(Sender: TObject);
begin
     AbreForm(TfrmSobre, frmSobre);
end;

procedure TfrmMain.Configuraes1Click(Sender: TObject);
begin
      AbreForm(TfrmConfig, frmConfig);
end;

End.
