program Project_AIS_TaxoPark_KKR;

uses
  Vcl.Forms,
  UnitEnter in '..\..\UnitEnter.pas' {FormEnter_KKR},
  UnitUser in '..\..\UnitUser.pas' {FormUser},
  UnitChangeSot in '..\..\UnitChangeSot.pas' {FormChangeS},
  UnitAdm in 'C:\prr\UnitAdm.pas' {FormAdmin},
  UnitChangeAvto in 'C:\Users\Кристина\Desktop\Project\Project_TaxoPark_KKR\UnitChangeAvto.pas' {Form6},
  UnitHistory in 'C:\Users\Кристина\Desktop\Project\Project_TaxoPark_KKR\UnitHistory.pas' {FormHistory};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormEnter_KKR, FormEnter_KKR);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormChangeS, FormChangeS);
  Application.CreateForm(TFormAdmin, FormAdmin);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TFormHistory, FormHistory);
  Application.Run;
end.
