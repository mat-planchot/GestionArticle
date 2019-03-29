program ArticleRechercheRef;

uses
  Forms,
  ArticleRef in 'ArticleRef.pas' {FormRecherche},
  AjoutArticle in 'AjoutArticle.pas' {FormAjout},
  AffichageArticle in 'AffichageArticle.pas' {FormAffichageArticle};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormRecherche, FormRecherche);
  Application.CreateForm(TFormAjout, FormAjout);
  Application.CreateForm(TFormAffichageArticle, FormAffichageArticle);
  Application.Run;
end.
