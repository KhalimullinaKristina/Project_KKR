object FormEnter_KKR: TFormEnter_KKR
  Left = 0
  Top = 0
  Caption = #1042#1093#1086#1076
  ClientHeight = 378
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PanelEntry: TPanel
    Left = -4
    Top = -2
    Width = 337
    Height = 385
    Color = 16703431
    ParentBackground = False
    TabOrder = 0
    object LabelLogin_KKR: TLabel
      Left = 132
      Top = 68
      Width = 70
      Height = 30
      Caption = #1051#1086#1075#1080#1085
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI Symbol'
      Font.Style = []
      ParentFont = False
    end
    object LabelPassword_KKR: TLabel
      Left = 132
      Top = 163
      Width = 87
      Height = 30
      Caption = #1055#1072#1088#1086#1083#1100
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI Symbol'
      Font.Style = []
      ParentFont = False
    end
    object PanelWelcome: TPanel
      Left = 1
      Top = 1
      Width = 335
      Height = 40
      Align = alTop
      Color = 16562848
      ParentBackground = False
      TabOrder = 0
    end
    object EditLogin_KKR: TEdit
      Left = 72
      Top = 104
      Width = 201
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditPassword_KKR: TEdit
      Left = 72
      Top = 199
      Width = 201
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object PanelEnter_KKR: TPanel
      Left = 72
      Top = 286
      Width = 201
      Height = 49
      Caption = #1042#1093#1086#1076
      Color = 16430970
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -23
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = PanelEnter_KKRClick
    end
  end
end
