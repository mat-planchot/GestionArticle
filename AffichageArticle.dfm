object FormAffichageArticle: TFormAffichageArticle
  Left = 206
  Top = 132
  Width = 535
  Height = 511
  Caption = 'Affichage d'#39'un article'
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
  object L_Magasin: TLabel
    Left = 200
    Top = 104
    Width = 78
    Height = 20
    Caption = 'L_Magasin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object L_CodeArticle: TLabel
    Left = 200
    Top = 160
    Width = 100
    Height = 20
    Caption = 'L_CodeArticle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object L_Designation: TLabel
    Left = 200
    Top = 208
    Width = 103
    Height = 20
    Caption = 'L_Designation'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object L_Prix: TLabel
    Left = 200
    Top = 256
    Width = 43
    Height = 20
    Caption = 'L_Prix'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
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
    TabOrder = 0
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
    TabOrder = 1
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
    TabOrder = 2
  end
  object StaticText4: TStaticText
    Left = 216
    Top = 48
    Width = 63
    Height = 28
    Caption = 'Article'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object B_Supprimer: TButton
    Left = 160
    Top = 336
    Width = 169
    Height = 41
    Caption = 'Supprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = B_SupprimerClick
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
    TabOrder = 5
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
    TabOrder = 6
    OnClick = FermerClick
  end
end
