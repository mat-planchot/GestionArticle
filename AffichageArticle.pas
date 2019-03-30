unit AffichageArticle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormAffichageArticle = class(TForm)
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    B_Supprimer: TButton;
    StaticText5: TStaticText;
    Fermer: TButton;
    L_Magasin: TLabel;
    L_CodeArticle: TLabel;
    L_Designation: TLabel;
    L_Prix: TLabel;
    StaticText6: TStaticText;
    B_Modifier: TButton;
    E_Stock: TEdit;
    StaticText7: TStaticText;
    E_Reduction: TEdit;
    procedure B_SupprimerClick(Sender: TObject);
    procedure FermerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAffichageArticle: TFormAffichageArticle;

implementation

uses ArticleRef;

{$R *.dfm}

procedure TFormAffichageArticle.B_SupprimerClick(Sender: TObject);
begin
  with FormRecherche.Q_Mag do
  begin
	  try
	    SQL.Clear;
	    SQL.Add('DELETE FROM '+ LowerCase(L_Magasin.Caption) +' WHERE codeArticle = :codeArticle);');
			ParamByName('codeArticle').AsString := L_CodeArticle.Caption;
			Execute;
	  finally
	    Free;
	  end;
  end;
end;

procedure TFormAffichageArticle.FermerClick(Sender: TObject);
begin
  FormAffichageArticle.Close;
end;

end.
