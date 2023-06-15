unit UnitHistory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, MemDS, DBAccess, Uni, UniProvider, MySQLUniProvider;

type
  TFormHistory = class(TForm)
    PanelChange: TPanel;
    LabelIDS: TLabel;
    LabelOtprav: TLabel;
    LabelDate: TLabel;
    LabelPrib: TLabel;
    LabelCash: TLabel;
    LabelHistory: TLabel;
    DBEditIDS: TDBEdit;
    DBEditDate: TDBEdit;
    DBEditOtprav: TDBEdit;
    DBEditPrib: TDBEdit;
    DBEditCash: TDBEdit;
    Panel2Change: TPanel;
    PanelSave: TPanel;
    MySQLUniProvider1: TMySQLUniProvider;
    LabelID: TLabel;
    DBEditID: TDBEdit;
    procedure PanelSaveCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Panel2ChangeClick(Sender: TObject);
    procedure PanelSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHistory: TFormHistory;

implementation

{$R *.dfm}

uses UnitAdm;

procedure TFormHistory.Panel2ChangeClick(Sender: TObject);
begin
  FormAdmin.UniQueryHistory.Edit;
     FormAdmin.UniQueryHistory.Post;
     FormAdmin.UniQueryHistory.Refresh;
     ShowMessage('Вы успешно внесли данные!');

     FormHistory.Close;
end;

procedure TFormHistory.PanelSaveCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
 if FormAdmin.UniQueryHistory.Modified then FormAdmin.UniQueryHistory.Post;
  ShowMessage('Информация изменена!');
    FormHistory.Close;
end;

procedure TFormHistory.PanelSaveClick(Sender: TObject);
begin
  FormAdmin.UniQueryHistory.Edit;
     FormAdmin.UniQueryHistory.Post;
     FormAdmin.UniQueryHistory.Refresh;
     ShowMessage('Вы успешно внесли данные!');

     FormHistory.Close;
end;

end.
