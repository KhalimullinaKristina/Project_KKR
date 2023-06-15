unit UnitEnter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  UniProvider, MySQLUniProvider, DBAccess, Uni, MemDS, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.Win.ADODB, UnitUser, UnitAdm;

type
  TFormEnter_KKR = class(TForm)
    PanelEntry: TPanel;
    LabelLogin_KKR: TLabel;
    LabelPassword_KKR: TLabel;
    PanelWelcome: TPanel;
    EditLogin_KKR: TEdit;
    EditPassword_KKR: TEdit;
    PanelEnter_KKR: TPanel;
    procedure PanelEnter_KKRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnter_KKR: TFormEnter_KKR;    d,g: string;    IDSave:string;
  SQLstring:string;

implementation

{$R *.dfm}

procedure TFormEnter_KKR.PanelEnter_KKRClick(Sender: TObject);
begin
     begin     d:='log'; g:='2222';
  try
       FormUser.UniConnectionAIS.Connected:= False;
       //FormMain.UniConnection.Server := '127.0.0.1';
       FormUser.UniConnectionAIS.ProviderName:='MySQL';
       FormUser.UniConnectionAIS.Port:= 3306;
       FormUser.UniConnectionAIS.Password:='';
       FormUser.UniConnectionAIS.Database:='taxi';
       FormUser.UniConnectionAIS.Connected := True;

        ShowMessage('����������� �����������');
        FormUser.UniQuerySot.Active:=False;
        FormUser.UniQuerySot.SQL.Clear;
        SQLstring:='select * from voditeli where Login ='+EditLogin_KKR.Text;
      FormUser.UniQuerySot.SQL.Add(SQLstring) ;
        FormUser.UniQuerySot.Active:= True;


        if FormUser.UniQuerySot.RecordCount>0 then
      begin
         if FormUser.UniQuerySot.FieldByName('Password').Value =  EditPassword_KKR.Text then
         begin
           // FormMain.Edit_Surname.Text:= Form_Basic.UniQuery_Realtors.FieldByName('Surname').Value;
           // FormMain.Edit_Name.Text:= Form_Basic.UniQuery_Realtors.FieldByName('Name').Value;
           // FormMain.Edit_Patronymic.Text:= Form_Basic.UniQuery_Realtors.FieldByName('Patronymic').Value;
           // FormMain.Label_Name.Caption:= Form_Basic.UniQuery_Realtors.FieldByName('Name').Value;
            //FormMain.Label_Surname.Caption:= Form_Basic.UniQuery_Realtors.FieldByName('Surname').Value;
           // FormMain.Label_Patronymic.Caption:= Form_Basic.UniQuery_Realtors.FieldByName('Patronymic').Value;
           // FormMain.Label_ID.Caption:= Form_Basic.UniQuery_Realtors.FieldByName('ID').Value;
            FormUser.Show;      FormEnter_KKR.Hide;
           // IDSave:=FormMain.UniQuery_Realtors.FieldByName('ID').Value;


         end
         else
         ShowMessage('�������� ������');

      end
      else
      ShowMessage('������������ �� ������');

      Except
      ShowMessage('������ ����������� � ����');

  End;
if ( EditLogin_KKR.Text=d) and (EditPassword_KKR.Text=g) then
    begin
   FormAdmin.Show;
     FormEnter_KKR.Hide;
    end ;
end;
end;

end.
