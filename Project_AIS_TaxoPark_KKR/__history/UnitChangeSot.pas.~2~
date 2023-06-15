unit UnitChangeSot;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  UniProvider, MySQLUniProvider, DBAccess, Uni, MemDS, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.Win.ADODB;

type
  TFormChangeS = class(TForm)
    PanelChange: TPanel;
    LabelTelephone: TLabel;
    LabelPasport: TLabel;
    LabelMail: TLabel;
    LabelINN: TLabel;
    LabelAdress: TLabel;
    LabelNumber: TLabel;
    LabelTerm: TLabel;
    LabelExperience: TLabel;
    LabelLogin: TLabel;
    LabelPassword: TLabel;
    LabelID: TLabel;
    DBEditAdress: TDBEdit;
    DBEditINN: TDBEdit;
    DBEditExperience: TDBEdit;
    DBEditTerm: TDBEdit;
    DBEditNumber: TDBEdit;
    DBEditPasport: TDBEdit;
    DBEditMail: TDBEdit;
    DBEditTelephone: TDBEdit;
    DBEditFIO: TDBEdit;
    PanelChange_KKR: TPanel;
    DBImagePhoto: TDBImage;
    DBEditPassword: TDBEdit;
    DBEditLogin: TDBEdit;
    DBEditID: TDBEdit;
    MySQLUniProvider: TMySQLUniProvider;
    PanelCreate: TPanel;
    LabelTELEPHONE_KKR: TLabel;
    LabelPassport_KKR: TLabel;
    LabelMail_KKR: TLabel;
    LabelINN_KKR: TLabel;
    LabelAdress_KKR: TLabel;
    LabelNember_KKR: TLabel;
    LabelTerm_KKR: TLabel;
    LabelStazh_KKR: TLabel;
    LabelLogin_KKR: TLabel;
    LabelPassword_KKR: TLabel;
    Label11: TLabel;
    DBEditAdress_KKR: TDBEdit;
    DBEditINN_KKR: TDBEdit;
    DBEditStazh_KKR: TDBEdit;
    DBEditTerm_KKR: TDBEdit;
    DBEditNember_KRR: TDBEdit;
    DBEditPassport_KKR: TDBEdit;
    DBEditMail_KKR: TDBEdit;
    DBEditlTELEPHONE_KKR: TDBEdit;
    DBEditFIOo_KKR: TDBEdit;
    PanelCreate_KKR: TPanel;
    DBImagePhoto_KKR: TDBImage;
    DBEditPassword_KKR: TDBEdit;
    DBEditLogin_KKR: TDBEdit;
    DBEditIdo_KKR: TDBEdit;
    procedure PanelChange_KKRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChangeS: TFormChangeS;

implementation

{$R *.dfm}
uses UnitUser;
procedure TFormChangeS.PanelChange_KKRClick(Sender: TObject);
begin
  if FormUser.UniQuerySot.Modified then FormUser.UniQuerySot.Post;
  ShowMessage('Информация изменена!');
     FormChangeS.Close;
end;

end.
