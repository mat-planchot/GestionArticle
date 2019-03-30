object FormRecherche: TFormRecherche
  Left = 528
  Top = 145
  Width = 514
  Height = 568
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
  object LabelRef: TLabel
    Left = 56
    Top = 40
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
  object B_Ajout: TButton
    Left = 280
    Top = 32
    Width = 153
    Height = 41
    Caption = 'Ajout'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = B_AjoutClick
  end
  object STextExistence: TStaticText
    Left = 56
    Top = 152
    Width = 361
    Height = 40
    Caption = 'Liste des magasins dans laquelle la r'#233'f'#233'rence est pr'#233'sente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 1
  end
  object EditRef: TEdit
    Left = 56
    Top = 80
    Width = 193
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object CLB_Mag: TCheckListBox
    Left = 56
    Top = 208
    Width = 217
    Height = 193
    OnClickCheck = CLB_MagClickCheck
    ItemHeight = 13
    TabOrder = 3
    OnClick = CLB_MagClickCheck
  end
  object BtnFermer: TButton
    Left = 176
    Top = 432
    Width = 153
    Height = 49
    Caption = 'Fermer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BtnFermerClick
  end
  object B_Voir: TButton
    Left = 312
    Top = 272
    Width = 113
    Height = 41
    Caption = 'Voir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = B_VoirClick
  end
  object B_Supprimer: TButton
    Left = 312
    Top = 208
    Width = 113
    Height = 41
    Caption = 'Supprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnClick = B_SupprimerClick
  end
  object B_Rechercher: TButton
    Left = 280
    Top = 88
    Width = 153
    Height = 40
    Caption = 'Rechercher'
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = B_RechercherClick
  end
  object mag: TMyConnection
    Database = 'article_magasin'
    Username = 'root'
    Server = 'localhost'
    LoginPrompt = False
    Left = 32
    Top = 440
  end
  object Q_mag: TMyQuery
    Connection = mag
    Left = 72
    Top = 440
  end
end
