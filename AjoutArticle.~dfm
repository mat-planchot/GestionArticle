object FormAjout: TFormAjout
  Left = 270
  Top = 186
  Width = 568
  Height = 557
  Caption = 'Ajout d'#39'Article'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object E_designation: TEdit
    Left = 224
    Top = 208
    Width = 169
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'bureau'
  end
  object E_codeArticle: TEdit
    Left = 224
    Top = 160
    Width = 169
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'M12345'
  end
  object StaticText1: TStaticText
    Left = 88
    Top = 160
    Width = 50
    Height = 24
    Caption = 'Code :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 88
    Top = 208
    Width = 97
    Height = 24
    Caption = 'D'#233'signation :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object StaticText3: TStaticText
    Left = 88
    Top = 264
    Width = 37
    Height = 24
    Caption = 'Prix :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object StaticText4: TStaticText
    Left = 160
    Top = 56
    Width = 161
    Height = 28
    Caption = 'Ajout d'#39'un article'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object E_prix: TEdit
    Left = 224
    Top = 256
    Width = 169
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '54'
  end
  object B_Ajout: TButton
    Left = 160
    Top = 336
    Width = 169
    Height = 41
    Caption = 'Ajouter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = B_AjoutClick
  end
  object C_magasins: TComboBox
    Left = 224
    Top = 104
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 8
  end
  object StaticText5: TStaticText
    Left = 88
    Top = 104
    Width = 72
    Height = 24
    Caption = 'Magasin :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object Fermer: TButton
    Left = 160
    Top = 392
    Width = 169
    Height = 41
    Caption = 'Fermer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = FermerClick
  end
  object Con: TMyConnection
    Database = 'article_magasin'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 376
    Top = 344
  end
  object Q_listeMag: TMyQuery
    Connection = Con
    SQL.Strings = (
      'SELECT nomMagasin FROM listeMagasin')
    Left = 416
    Top = 344
  end
  object Q_InsertArticle: TMyQuery
    Connection = Con
    SQL.Strings = (
      'SELECT nomMagasin FROM listeMagasin')
    Left = 376
    Top = 384
  end
end
