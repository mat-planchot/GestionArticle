object FormAffichageArticle: TFormAffichageArticle
  Left = 334
  Top = 146
  Width = 479
  Height = 566
  Caption = 'Affichage d'#39'un article'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object L_Magasin: TLabel
    Left = 200
    Top = 88
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
    Top = 144
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
    Top = 192
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
    Top = 240
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
    Top = 144
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
    Top = 192
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
    Top = 240
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
    Top = 32
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
    Left = 96
    Top = 392
    Width = 121
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
    Top = 88
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
    Left = 152
    Top = 448
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
  object StaticText6: TStaticText
    Left = 88
    Top = 280
    Width = 53
    Height = 24
    Caption = 'Stock :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object B_Modifier: TButton
    Left = 240
    Top = 392
    Width = 121
    Height = 41
    Caption = 'Modifier'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = B_SupprimerClick
  end
  object E_Stock: TEdit
    Left = 200
    Top = 280
    Width = 113
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = 'E_Stock'
  end
  object StaticText7: TStaticText
    Left = 88
    Top = 328
    Width = 85
    Height = 24
    Caption = 'R'#233'duction :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object E_Reduction: TEdit
    Left = 200
    Top = 328
    Width = 113
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
end
