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
    procedure B_SupprimerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
var magItem: String;
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

procedure TFormAffichageArticle.FormCreate(Sender: TObject);
var codeArt: String;
begin
  L_Magasin.Caption := 'annemasse';
  codeArt := FormRecherche.EditRef.Text;
  L_CodeArticle.Caption := codeArt;
end;

procedure TFormAffichageArticle.FermerClick(Sender: TObject);
begin
  FormAffichageArticle.Close;
end;

end.
