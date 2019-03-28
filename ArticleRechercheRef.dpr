program ArticleRechercheRef;

uses
  Forms,
  ArticleRef in 'ArticleRef.pas' {Form1},
  AjoutArticle in 'AjoutArticle.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
