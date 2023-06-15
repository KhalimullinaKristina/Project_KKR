unit UnitUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.Win.ADODB, UniProvider, MySQLUniProvider, DBAccess, Uni, MemDS, UnitChangeSot;

type
  TFormUser = class(TForm)
    PanelSideBar_KKR: TPanel;
    ButtonLC_KKR: TSpeedButton;
    ButtonHistory_KKR: TSpeedButton;
    ButtonMenu_KKR: TSpeedButton;
    PanelHistory: TPanel;
    LabelHistory: TLabel;
    DBGridHistory_KKR: TDBGrid;
    MySQLUniProvider1: TMySQLUniProvider;
    UniConnectionAIS: TUniConnection;
    UniQuerySot: TUniQuery;
    UniDataSourceSot: TUniDataSource;
    Panel_LC: TPanel;
    LabelTelephone: TLabel;
    LabelPasport: TLabel;
    LabelMail: TLabel;
    LabelINN: TLabel;
    LabelAdress: TLabel;
    LabelNumber: TLabel;
    LabelTerm: TLabel;
    LabelExperience: TLabel;
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
    UniQueryHistory: TUniQuery;
    UniDataSourceHistory: TUniDataSource;
    Timer_KKR: TTimer;
    procedure ButtonMenu_KKRClick(Sender: TObject);
    procedure Timer_KKRTimer(Sender: TObject);
    procedure ButtonLC_KKRClick(Sender: TObject);
    procedure ButtonAvto_KKRClick(Sender: TObject);
    procedure ButtonHistory_KKRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PanelChange_KKRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUser: TFormUser;  SideBar: Byte;

implementation

{$R *.dfm}

procedure TFormUser.ButtonAvto_KKRClick(Sender: TObject);
  var  u: Integer;
begin
  for u:= 0 to Panel_LC.ControlCount-1 do begin
    Panel_LC.Controls[u].Visible := False;
    Panel_LC.Visible := False;
  end;

   
   for u:= 0 to PanelHistory.ControlCount-1 do begin
    PanelHistory.Controls[u].Visible := False;
    PanelHistory.Visible := False;
  end;
end;

procedure TFormUser.ButtonHistory_KKRClick(Sender: TObject);
  var  u: Integer;
begin
  for u:= 0 to Panel_LC.ControlCount-1 do begin
    Panel_LC.Controls[u].Visible := False;
    Panel_LC.Visible := False;
  end;


   for u:= 0 to PanelHistory.ControlCount-1 do begin
    PanelHistory.Controls[u].Visible := True;
    PanelHistory.Visible := True;
  end;
end;

procedure TFormUser.ButtonLC_KKRClick(Sender: TObject);
  var  u: Integer;
begin
  for u:= 0 to Panel_LC.ControlCount-1 do begin
    Panel_LC.Controls[u].Visible := True;
    Panel_LC.Visible := True;
  end;


   for u:= 0 to PanelHistory.ControlCount-1 do begin
    PanelHistory.Controls[u].Visible := False;
    PanelHistory.Visible := False;
  end;
end;

procedure TFormUser.ButtonMenu_KKRClick(Sender: TObject);
begin
  Timer_KKR.Enabled:= True;
end;

procedure TFormUser.FormCreate(Sender: TObject);
  var
  u: Integer;
begin
 SideBar:= 0;

 for u:= 0 to Panel_LC.ControlCount-1 do begin
    Panel_LC.Controls[u].Visible := True;
    Panel_LC.Visible := True;
  end;


   for u:= 0 to PanelHistory.ControlCount-1 do begin
    PanelHistory.Controls[u].Visible := False;
    PanelHistory.Visible := False;
  end;
end;

procedure TFormUser.PanelChange_KKRClick(Sender: TObject);
  var
  u: Integer;
begin

 for u:= 0 to FormChangeS.PanelChange.ControlCount-1 do begin
    FormChangeS.PanelChange.Controls[u].Visible := True;
    FormChangeS.PanelChange.Visible := True;
  end;

 for u:= 0 to FormChangeS.PanelCreate.ControlCount-1 do begin
  FormChangeS.PanelCreate.Controls[u].Visible := False;
  FormChangeS.PanelCreate.Visible := False;
end;

FormChangeS.Show;
end;

procedure TFormUser.Timer_KKRTimer(Sender: TObject);
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
