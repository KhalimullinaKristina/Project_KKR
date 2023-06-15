object Form6: TForm6
  Left = 0
  Top = 0
  ClientHeight = 416
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PanelChange: TPanel
    Left = 0
    Top = 0
    Width = 406
    Height = 416
    Align = alClient
    Color = 16703431
    ParentBackground = False
    TabOrder = 0
    object LabelMark: TLabel
      Left = 108
      Top = 120
      Width = 80
      Height = 18
      Caption = #1052#1072#1088#1082#1072' '#1072#1074#1090#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelYear: TLabel
      Left = 103
      Top = 216
      Width = 85
      Height = 18
      Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelNumbers: TLabel
      Left = 136
      Top = 168
      Width = 52
      Height = 18
      Caption = #1053#1086#1084#1077#1088#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelTO: TLabel
      Left = 16
      Top = 264
      Width = 172
      Height = 18
      Caption = #1044#1072#1090#1072' '#1090#1077#1093'. '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelNumberStr: TLabel
      Left = 69
      Top = 308
      Width = 119
      Height = 18
      Caption = #1053#1086#1084#1077#1088' '#1089#1090#1088#1072#1093#1086#1074#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelAvtopark: TLabel
      Left = 132
      Top = 16
      Width = 122
      Height = 30
      Caption = #1040#1074#1090#1086#1087#1072#1088#1082
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
      Left = 172
      Top = 72
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
    object DBEditMArk: TDBEdit
      Left = 216
      Top = 116
      Width = 160
      Height = 27
      Color = 13562363
      DataField = #1052#1072#1088#1082#1072' '#1072#1074#1090#1086
      DataSource = FormAdmin.UniDataSourceAvto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEditNumbers: TDBEdit
      Left = 216
      Top = 164
      Width = 160
      Height = 27
      Color = 13562363
      DataField = #1053#1086#1084#1077#1088#1072
      DataSource = FormAdmin.UniDataSourceAvto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEditYear: TDBEdit
      Left = 216
      Top = 212
      Width = 160
      Height = 27
      Color = 13562363
      DataField = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
      DataSource = FormAdmin.UniDataSourceAvto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEditTO: TDBEdit
      Left = 216
      Top = 260
      Width = 160
      Height = 27
      Color = 13562363
      DataField = #1044#1072#1090#1072' '#1090#1077#1093'. '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
      DataSource = FormAdmin.UniDataSourceAvto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEditNumberStr: TDBEdit
      Left = 216
      Top = 304
      Width = 160
      Height = 27
      Color = 13562363
      DataField = #1053#1086#1084#1077#1088' '#1089#1090#1088#1072#1093#1086#1074#1082#1080
      DataSource = FormAdmin.UniDataSourceAvto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel2Change: TPanel
      Left = 108
      Top = 357
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
    object Panel2Save: TPanel
      Left = 108
      Top = 357
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
      OnClick = Panel2SaveClick
    end
    object DBEditID: TDBEdit
      Left = 216
      Top = 68
      Width = 160
      Height = 27
      Color = 13562363
      DataField = 'ID'
      DataSource = FormAdmin.UniDataSourceAvto
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
