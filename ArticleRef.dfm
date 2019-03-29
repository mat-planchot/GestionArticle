object FormRecherche: TFormRecherche
  Left = 528
  Top = 145
  Width = 517
  Height = 546
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
    object B_Rechercher: TButton
      Left = 280
      Top = 104
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
      TabOrder = 0
      OnClick = B_RechercherClick
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
    object BtnFermer: TButton
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
      TabOrder = 2
      OnClick = BtnFermerClick
    end
    object STextExistence: TStaticText
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
      TabOrder = 3
    end
    object B_Ajout: TButton
      Left = 280
      Top = 48
      Width = 153
      Height = 41
      Caption = 'Ajout'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = B_AjoutClick
    end
    object CLB_Mag: TCheckListBox
      Left = 56
      Top = 192
      Width = 217
      Height = 193
      OnClickCheck = CLB_MagClickCheck
      ItemHeight = 13
      TabOrder = 5
      OnClick = CLB_MagClickCheck
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
      TabOrder = 7
      Visible = False
      OnClick = B_VoirClick
    end
  end
  object mag: TMyConnection
    Database = 'article_magasin'
    Username = 'root'
    Server = 'localhost'
    LoginPrompt = False
    Left = 32
    Top = 400
  end
  object Q_mag: TMyQuery
    Connection = mag
    Left = 72
    Top = 400
  end
  object Q_magasins: TMyQuery
    Connection = mag
    Left = 32
    Top = 440
  end
end
