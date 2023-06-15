object FormHistory: TFormHistory
  Left = 0
  Top = 0
  ClientHeight = 450
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PanelChange: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 450
    Align = alClient
    Color = 16703431
    ParentBackground = False
    TabOrder = 0
    object LabelIDS: TLabel
      Left = 79
      Top = 136
      Width = 101
      Height = 18
      Caption = 'ID '#1057#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelOtprav: TLabel
      Left = 46
      Top = 232
      Width = 134
      Height = 18
      Caption = #1058#1086#1095#1082#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelDate: TLabel
      Left = 146
      Top = 184
      Width = 34
      Height = 18
      Caption = #1044#1072#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelPrib: TLabel
      Left = 68
      Top = 280
      Width = 112
      Height = 18
      Caption = #1058#1086#1095#1082#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelCash: TLabel
      Left = 106
      Top = 324
      Width = 74
      Height = 18
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelHistory: TLabel
      Left = 111
      Top = 16
      Width = 220
      Height = 30
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1087#1086#1077#1079#1076#1086#1082
      Color = clHotLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -25
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LabelID: TLabel
      Left = 164
      Top = 88
      Width = 16
      Height = 18
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEditIDS: TDBEdit
      Left = 208
      Top = 132
      Width = 160
      Height = 27
      Color = 13562363
      DataField = 'ID '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      DataSource = FormAdmin.UniDataSourceHistory
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEditDate: TDBEdit
      Left = 208
      Top = 180
      Width = 160
      Height = 27
      Color = 13562363
      DataField = #1044#1072#1090#1072' '#1087#1086#1077#1079#1076#1082#1080
      DataSource = FormAdmin.UniDataSourceHistory
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEditOtprav: TDBEdit
      Left = 208
      Top = 228
      Width = 160
      Height = 27
      Color = 13562363
      DataField = #1058#1086#1095#1082#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
      DataSource = FormAdmin.UniDataSourceHistory
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEditPrib: TDBEdit
      Left = 208
      Top = 276
      Width = 160
      Height = 27
      Color = 13562363
      DataField = #1058#1086#1095#1082#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
      DataSource = FormAdmin.UniDataSourceHistory
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEditCash: TDBEdit
      Left = 208
      Top = 320
      Width = 160
      Height = 27
      Color = 13562363
      DataField = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      DataSource = FormAdmin.UniDataSourceHistory
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel2Change: TPanel
      Left = 111
      Top = 389
      Width = 169
      Height = 33
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Color = 16430970
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      OnClick = Panel2ChangeClick
    end
    object PanelSave: TPanel
      Left = 111
      Top = 389
      Width = 169
      Height = 33
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Color = 16430970
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnCanResize = PanelSaveCanResize
      OnClick = PanelSaveClick
    end
    object DBEditID: TDBEdit
      Left = 208
      Top = 84
      Width = 160
      Height = 27
      Color = 13562363
      DataField = 'ID'
      DataSource = FormAdmin.UniDataSourceHistory
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 45
    Top = 32
  end
end
