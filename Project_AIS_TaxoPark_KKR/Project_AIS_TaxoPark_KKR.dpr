program Project_AIS_TaxoPark_KKR;

uses
  Vcl.Forms,
  UnitEnter in 'UnitEnter.pas' {FormEnter_KKR},
  UnitUser in 'UnitUser.pas' {FormUser},
  UnitChangeSot in 'UnitChangeSot.pas' {FormChangeS},
  UnitHistory in 'UnitHistory.pas' {FormHistory},
  UnitAdm in 'UnitAdm.pas' {FormAdmin},
  UnitChangeAvto in 'UnitChangeAvto.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormEnter_KKR, FormEnter_KKR);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormChangeS, FormChangeS);
  Application.CreateForm(TFormHistory, FormHistory);
  Application.CreateForm(TFormAdmin, FormAdmin);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
