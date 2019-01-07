object Form1: TForm1
  Left = 567
  Top = 205
  Width = 514
  Height = 543
  Caption = 'Reference'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = sqlCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -24
    Width = 497
    Height = 529
    TabOrder = 0
    object LabelRef: TLabel
      Left = 56
      Top = 56
      Width = 145
      Height = 22
      Caption = 'R'#233'f'#233'rence article'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object L_article_divers: TLabel
      Left = 184
      Top = 208
      Width = 4
      Height = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object L_article_interior: TLabel
      Left = 184
      Top = 264
      Width = 4
      Height = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object L_VGE3: TLabel
      Left = 184
      Top = 320
      Width = 4
      Height = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object L_Magasin: TLabel
      Left = 184
      Top = 360
      Width = 4
      Height = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object BtnRech: TButton
      Left = 280
      Top = 88
      Width = 153
      Height = 40
      Caption = 'Rechercher'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnRechClick
    end
    object EditRef: TEdit
      Left = 56
      Top = 96
      Width = 193
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object StaticText1: TStaticText
      Left = 56
      Top = 208
      Width = 125
      Height = 24
      Caption = 'article_divers : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 56
      Top = 264
      Width = 129
      Height = 24
      Caption = 'article_interior :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText3: TStaticText
      Left = 56
      Top = 320
      Width = 116
      Height = 24
      Caption = 'VGE3 article :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText4: TStaticText
      Left = 56
      Top = 360
      Width = 90
      Height = 24
      Caption = 'Magasins :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Button1: TButton
      Left = 176
      Top = 424
      Width = 153
      Height = 49
      Caption = 'Fermer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object StaticText5: TStaticText
      Left = 56
      Top = 160
      Width = 404
      Height = 24
      Caption = 'Existence ou non de la r'#233'f'#233'rence dans les tables :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 7
    end
  end
  object DB_statsclipper: TDatabase
    Connected = True
    DatabaseName = 'statclipper'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'server name=NTS-INTRAWEB'
      'database name=STATS_CLIPPER'
      ''
      'USER NAME=SA'
      'password=tvlcaleqalfesc')
    SessionName = 'Default'
    Left = 512
    Top = 136
  end
  object DB_VGE3: TDatabase
    Connected = True
    DatabaseName = 'vge3'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'server name=NTS-INTRAWEB'
      'database name=VGE3'
      ''
      'USER NAME=SA'
      'password=tvlcaleqalfesc')
    SessionName = 'Default'
    Left = 512
    Top = 184
  end
  object DB_master: TDatabase
    DatabaseName = 'master'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'server name=VEQUALIS2'
      'database name=master'
      ''
      'USER NAME=SA')
    SessionName = 'Default'
    Left = 512
    Top = 232
  end
  object Q_article_divers: TQuery
    DatabaseName = 'statclipper'
    SQL.Strings = (
      'SELECT type FROM article_divers')
    Left = 552
    Top = 136
  end
  object Q_article_interior: TQuery
    DatabaseName = 'statclipper'
    Left = 600
    Top = 136
  end
  object Q_VGE3_article: TQuery
    DatabaseName = 'vge3'
    SQL.Strings = (
      'SELECT type FROM article')
    Left = 552
    Top = 184
  end
  object Q_Magasin: TQuery
    DatabaseName = 'master'
    Left = 552
    Top = 232
  end
  object Q_param_Interior: TQuery
    DatabaseName = 'PARAM_INTERIOR'
    SQL.Strings = (
      'SELECT nombase FROM refmag WHERE actif = '#39'T'#39)
    Left = 512
    Top = 288
  end
  object DB_param_Interior: TDatabase
    AliasName = 'PARAM_INTERIOR'
    DatabaseName = 'param_interior'
    LoginPrompt = False
    Params.Strings = (
      'server name=VEQUALIS2'
      ''
      'USER NAME=SA')
    SessionName = 'Default'
    Left = 552
    Top = 288
  end
end
