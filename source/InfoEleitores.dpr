program InfoEleitores;

uses
  Forms,
  Windows,
  Messages,
  Dialogs,
  SysUtils,
  Variants,
  Classes,
  Controls,
  frmMainEleitores in 'frmMainEleitores.pas' {frmMain},
  udmConn in 'udmConn.pas' {DMConn: TDataModule},
  uFuncoes in 'uFuncoes.pas',
  uFrmCadastro in 'uFrmCadastro.pas' {frmCadastro},
  uFrmCadEleitores in 'uFrmCadEleitores.pas' {frmCadEleitores},
  uFrmRelatorio in 'uFrmRelatorio.pas' {frmRelatorio},
  uFrmCadUsuarios in 'uFrmCadUsuarios.pas' {frmCadUsuarios},
  uLogon in 'uLogon.pas' {frmLogon},
  uFrmRelPedidos in 'uFrmRelPedidos.pas' {frmRelPedidos},
  uFrmRelClientes in 'uFrmRelClientes.pas' {frmRelClientes},
  uFrmCartas in 'uFrmCartas.pas' {frmCartas},
  uFrmCadCartas in 'uFrmCadCartas.pas' {frmCadCartas},
  uFrmSobre in 'uFrmSobre.pas' {frmSobre},
  uFrmConfiguracoes in 'uFrmConfiguracoes.pas' {frmConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDMConn, DMConn);
  frmLogon := TfrmLogon.Create(nil);
  if frmLogon.ShowModal = mrOk then
    begin
         Application.CreateForm(TfrmMain, frmMain);
         frmMainEleitores.M_CDUSUA := uFuncoes.StrZero(InttoStr(uLogon.codigoUsuario),3);
         frmMainEleitores.M_NMUSUA := uLogon.nomeUsuario;
         frmMainEleitores.admin    := uLogon.administrador;
         FreeAndNil(frmLogon);
         Application.Run;
    end
    else
    begin
        FreeAndNil(DMConn);
        //
        Application.Terminate;
    End;
end.
