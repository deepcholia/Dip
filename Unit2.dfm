object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 793
  ClientWidth = 1098
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
  object Panel1: TPanel
    Left = 176
    Top = 8
    Width = 889
    Height = 297
    TabOrder = 0
    object Label1: TLabel
      Left = 368
      Top = 8
      Width = 135
      Height = 13
      Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099': '#1055#1077#1088#1074#1099#1081' '#1082#1091#1088#1089
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 27
      Width = 841
      Height = 225
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button1: TButton
      Left = 57
      Top = 258
      Width = 25
      Height = 25
      Caption = '2'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 88
      Top = 258
      Width = 26
      Height = 25
      Caption = '3'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 120
      Top = 258
      Width = 27
      Height = 25
      Caption = '4'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 710
      Top = 258
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 791
      Top = 258
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 5
      OnClick = Button5Click
    end
    object Button13: TButton
      Left = 24
      Top = 258
      Width = 27
      Height = 25
      Caption = '1'
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 176
    Top = 8
    Width = 889
    Height = 297
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 371
      Top = 8
      Width = 132
      Height = 13
      Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099': '#1042#1090#1086#1088#1086#1081' '#1082#1091#1088#1089
    end
    object DBGrid2: TDBGrid
      Left = 24
      Top = 27
      Width = 841
      Height = 225
      DataSource = DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button6: TButton
      Left = 710
      Top = 258
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 791
      Top = 258
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 24
      Top = 258
      Width = 27
      Height = 25
      Caption = '1'
      TabOrder = 3
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 57
      Top = 258
      Width = 26
      Height = 25
      Caption = '2'
      TabOrder = 4
    end
    object Button14: TButton
      Left = 120
      Top = 258
      Width = 26
      Height = 25
      Caption = '4'
      TabOrder = 5
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 88
      Top = 258
      Width = 26
      Height = 25
      Caption = '3'
      TabOrder = 6
      OnClick = Button15Click
    end
  end
  object Panel3: TPanel
    Left = 176
    Top = 8
    Width = 889
    Height = 297
    TabOrder = 2
    Visible = False
    object Label3: TLabel
      Left = 371
      Top = 8
      Width = 132
      Height = 13
      Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099': '#1058#1088#1077#1090#1080#1081' '#1082#1091#1088#1089
    end
    object DBGrid3: TDBGrid
      Left = 24
      Top = 27
      Width = 841
      Height = 225
      DataSource = DataSource3
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button10: TButton
      Left = 710
      Top = 258
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 791
      Top = 258
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 24
      Top = 258
      Width = 27
      Height = 25
      Caption = '1'
      TabOrder = 3
      OnClick = Button8Click
    end
    object Button16: TButton
      Left = 57
      Top = 258
      Width = 26
      Height = 25
      Caption = '2'
      TabOrder = 4
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 120
      Top = 258
      Width = 26
      Height = 25
      Caption = '4'
      TabOrder = 5
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 88
      Top = 258
      Width = 26
      Height = 25
      Caption = '3'
      TabOrder = 6
    end
  end
  object Panel4: TPanel
    Left = 176
    Top = 8
    Width = 889
    Height = 297
    TabOrder = 3
    Visible = False
    object Label4: TLabel
      Left = 360
      Top = 8
      Width = 153
      Height = 13
      Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099': '#1063#1077#1090#1074#1077#1088#1090#1099#1081' '#1082#1091#1088#1089
    end
    object DBGrid4: TDBGrid
      Left = 24
      Top = 27
      Width = 841
      Height = 225
      DataSource = DataSource4
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button19: TButton
      Left = 710
      Top = 258
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button19Click
    end
    object Button20: TButton
      Left = 791
      Top = 258
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button20Click
    end
    object Button21: TButton
      Left = 24
      Top = 258
      Width = 27
      Height = 25
      Caption = '1'
      TabOrder = 3
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 57
      Top = 258
      Width = 26
      Height = 25
      Caption = '2'
      TabOrder = 4
      OnClick = Button22Click
    end
    object Button23: TButton
      Left = 120
      Top = 258
      Width = 26
      Height = 25
      Caption = '4'
      TabOrder = 5
    end
    object Button24: TButton
      Left = 88
      Top = 258
      Width = 26
      Height = 25
      Caption = '3'
      TabOrder = 6
      OnClick = Button24Click
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=54414639denis;Persist Security Info=' +
      'True;User ID=root;Extended Properties="Driver=MySQL ODBC 8.0 ANS' +
      'I Driver;SERVER=localhost;UID=root;PWD=54414639denis;DATABASE=up' +
      'lan;PORT=3306;COLUMN_SIZE_S32=1";Initial Catalog=uplan'
    LoginPrompt = False
    Left = 64
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 32
    Top = 80
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 96
    Top = 80
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 32
    Top = 128
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 96
    Top = 128
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 32
    Top = 176
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 96
    Top = 176
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 32
    Top = 224
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 96
    Top = 224
  end
end
