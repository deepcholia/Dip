object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 829
  ClientWidth = 1007
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Выход: TButton
    Left = 894
    Top = 784
    Width = 75
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 0
    OnClick = ВыходClick
  end
  object Panel_disciplines_1: TPanel
    Left = 110
    Top = 8
    Width = 889
    Height = 297
    TabOrder = 1
    object DBGD1_1: TDBGrid
      Left = 16
      Top = 16
      Width = 857
      Height = 233
      DataSource = DataD1_1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGD1_2: TDBGrid
      Left = 16
      Top = 16
      Width = 857
      Height = 233
      DataSource = DataD1_2
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
    object ButtonD1_1_add: TButton
      Tag = 1
      Left = 717
      Top = 253
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 2
      OnClick = ButtonD1_1_addClick
    end
    object ButtonD1_1_del: TButton
      Tag = 5
      Left = 798
      Top = 253
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 3
      OnClick = ButtonD1_1_delClick
    end
    object ButtonD1_2_add: TButton
      Tag = 2
      Left = 717
      Top = 253
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 4
      Visible = False
      OnClick = ButtonD1_1_addClick
    end
    object ButtonD1_3_add: TButton
      Tag = 3
      Left = 717
      Top = 253
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 5
      Visible = False
      OnClick = ButtonD1_1_addClick
    end
    object ButtonD1_4_add: TButton
      Tag = 4
      Left = 717
      Top = 253
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 6
      Visible = False
      OnClick = ButtonD1_1_addClick
    end
    object ButtonD1_2_del: TButton
      Tag = 6
      Left = 798
      Top = 253
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 7
      Visible = False
      OnClick = ButtonD1_1_delClick
    end
    object ButtonD1_3_del: TButton
      Tag = 7
      Left = 798
      Top = 253
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 8
      Visible = False
      OnClick = ButtonD1_1_delClick
    end
    object ButtonD1_4_del: TButton
      Tag = 8
      Left = 798
      Top = 253
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 9
      Visible = False
      OnClick = ButtonD1_1_delClick
    end
    object ButtonD1_1_C1: TButton
      Tag = 9
      Left = 16
      Top = 255
      Width = 49
      Height = 25
      Caption = '1 '#1082#1091#1088#1089
      TabOrder = 10
      OnClick = ButtonD1_1_C1Click
    end
    object ButtonD1_1_C2: TButton
      Tag = 10
      Left = 71
      Top = 255
      Width = 49
      Height = 25
      Caption = '2 '#1082#1091#1088#1089
      TabOrder = 11
      OnClick = ButtonD1_1_C1Click
    end
    object ButtonD1_1_C3: TButton
      Tag = 11
      Left = 126
      Top = 255
      Width = 49
      Height = 25
      Caption = '3 '#1082#1091#1088#1089
      TabOrder = 12
      OnClick = ButtonD1_1_C1Click
    end
    object ButtonD1_1_C4: TButton
      Tag = 12
      Left = 181
      Top = 255
      Width = 49
      Height = 25
      Caption = '4 '#1082#1091#1088#1089
      TabOrder = 13
      OnClick = ButtonD1_1_C1Click
    end
    object DBGD1_3: TDBGrid
      Left = 16
      Top = 16
      Width = 857
      Height = 233
      DataSource = DataD1_3
      TabOrder = 14
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
    object DBGD1_4: TDBGrid
      Left = 16
      Top = 16
      Width = 857
      Height = 233
      DataSource = DataD1_4
      TabOrder = 15
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
  end
  object Connection_1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=54414639denis;Persist Security Info=' +
      'True;User ID=root;Extended Properties="Driver=MySQL ODBC 8.0 Uni' +
      'code Driver;SERVER=localhost;UID=root;PWD=54414639denis;DATABASE' +
      '=uplan;PORT=3306;COLUMN_SIZE_S32=1";Initial Catalog=uplan'
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object DataD1_1: TDataSource
    DataSet = QueryD1_1
    Left = 16
    Top = 80
  end
  object QueryD1_1: TADOQuery
    Connection = Connection_1
    Parameters = <>
    Left = 72
    Top = 80
  end
  object DataD1_2: TDataSource
    DataSet = QueryD1_2
    Left = 16
    Top = 136
  end
  object QueryD1_2: TADOQuery
    Connection = Connection_1
    Parameters = <>
    Left = 72
    Top = 136
  end
  object DataD1_3: TDataSource
    DataSet = QueryD1_3
    Left = 16
    Top = 200
  end
  object DataD1_4: TDataSource
    DataSet = QueryD1_4
    Left = 16
    Top = 256
  end
  object QueryD1_3: TADOQuery
    Connection = Connection_1
    Parameters = <>
    Left = 72
    Top = 200
  end
  object QueryD1_4: TADOQuery
    Connection = Connection_1
    Parameters = <>
    Left = 72
    Top = 256
  end
end
