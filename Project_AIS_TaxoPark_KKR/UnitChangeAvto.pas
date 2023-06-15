unit UnitChangeAvto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  UniProvider, MySQLUniProvider, DBAccess, Uni, MemDS, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.Win.ADODB, UnitUser;

type
  TForm6 = class(TForm)
    PanelChange: TPanel;
    LabelMark: TLabel;
    LabelYear: TLabel;
    LabelNumbers: TLabel;
    LabelTO: TLabel;
    LabelNumberStr: TLabel;
    DBEditMArk: TDBEdit;
    DBEditNumbers: TDBEdit;
    DBEditYear: TDBEdit;
    DBEditTO: TDBEdit;
    DBEditNumberStr: TDBEdit;
    MySQLUniProvider1: TMySQLUniProvider;
    LabelAvtopark: TLabel;
    Panel2Change: TPanel;
    Panel2Save: TPanel;
    LabelID: TLabel;
    DBEditID: TDBEdit;
    procedure Panel2SaveClick(Sender: TObject);
    procedure Panel2ChangeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses UnitAdm;

procedure TForm6.Panel2ChangeClick(Sender: TObject);
begin
 if FormAdmin.UniQueryAvto.Modified then FormAdmin.UniQueryAvto.Post;
  ShowMessage('Информация изменена!');
     Form6.Close;
end;

procedure TForm6.Panel2SaveClick(Sender: TObject);
begin
   FormAdmin.UniQueryAvto.Edit;
     FormAdmin.UniQueryAvto.Post;
     FormAdmin.UniQueryAvto.Refresh;
     ShowMessage('Вы успешно внесли данные!');

     Form6.Close;
end;

end.
