unit UnitAdm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.Win.ADODB, UniProvider, MySQLUniProvider, DBAccess, Uni, MemDS, UnitChangeAvto, UnitHistory, UnitChangeSot;

type
  TFormAdmin = class(TForm)
    Panel_LC: TPanel;
    Timer_KKR: TTimer;
    PanelAvto: TPanel;
    PanelChangeAvto: TPanel;
    PanelAddAvto: TPanel;
    PanelDeliteAvto: TPanel;
    DBGridAvto: TDBGrid;
    MySQLUniProvider1: TMySQLUniProvider;
    UniConnection1: TUniConnection;
    UniQueryAvto: TUniQuery;
    UniDataSourceAvto: TUniDataSource;
    UniQuerySot: TUniQuery;
    UniDataSourceSot: TUniDataSource;
    LabelAvto: TLabel;
    PanelADDSotrudnik: TPanel;
    PanelDeliteSotrudnik: TPanel;
    PanelSideBar_KKR: TPanel;
    ButtonSot_KKR: TSpeedButton;
    ButtonHistory_KKR: TSpeedButton;
    ButtonAvto_KKR: TSpeedButton;
    ButtonMenu_KKR: TSpeedButton;
    LabelSotrudniki: TLabel;
    DBGridSotredniki: TDBGrid;
    PanelHistory: TPanel;
    LabelHistory: TLabel;
    PanelCreateHistory: TPanel;
    PanelChangeHistory: TPanel;
    DBGridHistory: TDBGrid;
    UniQueryHistory: TUniQuery;
    UniDataSourceHistory: TUniDataSource;
    procedure Timer_KKRTimer(Sender: TObject);
    procedure ButtonMenu_KKRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PanelChange_KKRClick(Sender: TObject);
    procedure ButtonLC_KKRClick(Sender: TObject);
    procedure ButtonAvto_KKRClick(Sender: TObject);
    procedure PanelAddVvod1Click(Sender: TObject);
    procedure PanelDelite_KKR1Click(Sender: TObject);
    procedure PanelChangeAvtoClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure PanelDeliteSotrudnikClick(Sender: TObject);
    procedure ButtonHistory_KKRClick(Sender: TObject);
    procedure PanelAddAvtoClick(Sender: TObject);
    procedure PanelDeliteAvtoClick(Sender: TObject);
    procedure PanelCreateHistoryClick(Sender: TObject);
    procedure PanelChangeHistoryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdmin: TFormAdmin;
  SideBar: Byte;
  Str:string;
  Int:integer;
  IDSave:string;
  SQLstring:string;

implementation

{$R *.dfm}

procedure TFormAdmin.ButtonAvto_KKRClick(Sender: TObject);
var
  u, t: Integer;
begin
  for u:= 0 to PanelAvto.ControlCount-1 do begin
    PanelAvto.Controls[u].Visible := true;
    PanelAvto.Visible := true;
  end;

  for u:= 0 to Panel_LC.ControlCount-1 do begin
    Panel_LC.Controls[u].Visible := false;
    Panel_LC.Visible := false;
  end;

  for u:= 0 to PanelHistory.ControlCount-1 do begin
    PanelHistory.Controls[u].Visible := False;
    PanelHistory.Visible := False;
  end;
end;

procedure TFormAdmin.ButtonHistory_KKRClick(Sender: TObject);
  var
  u: Integer;
begin
  for u:= 0 to Panel_LC.ControlCount-1 do begin
    Panel_LC.Controls[u].Visible := False;
    Panel_LC.Visible := False;
  end;

  for u:= 0 to PanelAvto.ControlCount-1 do begin
    PanelAvto.Controls[u].Visible := False;
    PanelAvto.Visible := False;
  end;

  for u:= 0 to PanelHistory.ControlCount-1 do begin
    PanelHistory.Controls[u].Visible := True;
    PanelHistory.Visible := True;
  end;
end;

procedure TFormAdmin.ButtonLC_KKRClick(Sender: TObject);
   var
  u: Integer;
begin
  for u:= 0 to Panel_LC.ControlCount-1 do begin
    Panel_LC.Controls[u].Visible := True;
    Panel_LC.Visible := True;
  end;

  for u:= 0 to PanelAvto.ControlCount-1 do begin
    PanelAvto.Controls[u].Visible := False;
    PanelAvto.Visible := False;
  end;

  for u:= 0 to PanelHistory.ControlCount-1 do begin
    PanelHistory.Controls[u].Visible := False;
    PanelHistory.Visible := False;
  end;
end;

procedure TFormAdmin.ButtonMenu_KKRClick(Sender: TObject);
begin
  Timer_KKR.Enabled:= True;
end;





procedure TFormAdmin.FormCreate(Sender: TObject);
var
  u: Integer;
begin
 SideBar:= 0;

 for u:= 0 to Panel_LC.ControlCount-1 do begin
    Panel_LC.Controls[u].Visible := True;
    Panel_LC.Visible := True;
  end;

  for u:= 0 to PanelAvto.ControlCount-1 do begin
    PanelAvto.Controls[u].Visible := False;
    PanelAvto.Visible := False;
  end;

  for u:= 0 to PanelHistory.ControlCount-1 do begin
    PanelHistory.Controls[u].Visible := False;
    PanelHistory.Visible := False;
  end;
end;

procedure TFormAdmin.Panel1Click(Sender: TObject);
begin
// Form3.PanelChange.Visible:=true;   Form3.Panel1.Visible:=false;
 //Form3.PanelSave.Visible:=false;
 //Form3.PanelChange_KKR.Visible:=true;
 //Form3.Show;
end;

procedure TFormAdmin.PanelDeliteSotrudnikClick(Sender: TObject);
begin
   if MessageDlg('Подтвердите удаление записи', mtConfirmation,[mbYes,   mbNo],0)   = mrYes
    then
    begin
      UniQuerySot.Delete;
    end
end;

procedure TFormAdmin.PanelAddAvtoClick(Sender: TObject);
begin     UniQueryAvto.Insert;
   Form6.PanelChange.Visible:=true;
   Form6.Panel2Save.Visible:=true;
   Form6.Panel2Change.Visible:=false;
   Form6.Show;
end;

procedure TFormAdmin.PanelAddVvod1Click(Sender: TObject);   var
  u: Integer;
begin    UniQuerySot.Insert;
 for u:= 0 to FormChangeS.PanelChange.ControlCount-1 do begin
    FormChangeS.PanelChange.Controls[u].Visible := False;
    FormChangeS.PanelChange.Visible := False;
  end;

 for u:= 0 to FormChangeS.PanelCreate.ControlCount-1 do begin
  FormChangeS.PanelCreate.Controls[u].Visible := True;
  FormChangeS.PanelCreate.Visible := True;
end;

FormChangeS.Show;
end;

procedure TFormAdmin.PanelChangeAvtoClick(Sender: TObject);
begin
   Form6.PanelChange.Visible:=true;
   Form6.Panel2Save.Visible:=false;
   Form6.Panel2Change.Visible:=true;
   Form6.Show;
end;

procedure TFormAdmin.PanelChangeHistoryClick(Sender: TObject);
begin
   FormHistory.PanelChange.Visible:=true;
   FormHistory.PanelSave.Visible:=false;
   FormHistory.Panel2Change.Visible:=true;
   FormHistory.Show;
end;

procedure TFormAdmin.PanelChange_KKRClick(Sender: TObject);
 //Form3.Show;

 var
  u: Integer;
begin
  for u:= 0 to Panel_LC.ControlCount-1 do begin
    Panel_LC.Controls[u].Visible := False;
  end;
end;

procedure TFormAdmin.PanelCreateHistoryClick(Sender: TObject);
begin   UniQueryHistory.Insert;
  FormHistory.PanelChange.Visible:=true;
   FormHistory.PanelSave.Visible:=true;
   FormHistory.Panel2Change.Visible:=false;
   FormHistory.Show;
end;

procedure TFormAdmin.PanelDeliteAvtoClick(Sender: TObject);
begin
  if MessageDlg('Подтвердите удаление записи', mtConfirmation,[mbYes,   mbNo],0)   = mrYes
    then
    begin
      UniQueryAvto.Delete;
    end
end;

procedure TFormAdmin.PanelDelite_KKR1Click(Sender: TObject);
begin
  if MessageDlg('Подтвердите удаление записи', mtConfirmation,[mbYes,   mbNo],0)   = mrYes
    then
    begin
      UniQuerySot.Delete;
    end
end;

procedure TFormAdmin.Timer_KKRTimer(Sender: TObject);
  var
  i:integer;
  begin
    if SideBar = 0 then
    begin
    if PanelSideBar_KKR.Width >= 60 then
    begin
        PanelSideBar_KKR.Width:=PanelSideBar_KKR.Width-10;
    end
    else
    begin
      Timer_KKR.Enabled:= false;
      SideBar:=1;
    end;
    end;
     if SideBar = 1 then
    begin
    if PanelSideBar_KKR.Width <= 350 then
    begin
        PanelSideBar_KKR.Width:=PanelSideBar_KKR.Width+10;
    end
    else
    begin
      Timer_KKR.Enabled:= false;
      SideBar:=0;
    end;
    end;
end;

end.
