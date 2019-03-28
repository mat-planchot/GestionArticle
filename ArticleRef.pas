unit ArticleRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls, MemDS,
  DBAccess, MyAccess, CheckLst;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    B_Rechercher: TButton;
    EditRef: TEdit;
    LabelRef: TLabel;
    STextMagasins: TStaticText;
    L_Magasin: TLabel;
    BtnFermer: TButton;
    STextExistence: TStaticText;
    STextVge3Precision: TStaticText;
    mag: TMyConnection;
    Q_mag: TMyQuery;
    Q_magasins: TMyQuery;
    B_Ajout: TButton;
    CLB_Mag: TCheckListBox;
    B_Supprimer: TButton;
    B_Voir: TButton;
    procedure B_RechercherClick(Sender: TObject);
    procedure BtnFermerClick(Sender: TObject);
    procedure sqlCreate(Sender: TObject);
    procedure B_AjoutClick(Sender: TObject);
    procedure B_VoirClick(Sender: TObject);
    procedure CLB_MagClickCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ref, ref4: String;
  vge_type: String;
  magasins: tstringlist;
  magasinsCount: integer;
implementation

uses AjoutArticle;

{$R *.dfm}
procedure TForm1.B_RechercherClick(Sender: TObject);
var i: integer;
begin
  ref:= UpperCase(EditRef.Text);
  if (length(ref) = 6) then
  begin
    with Q_magasins do
		begin
      if (CLB_Mag.Items.Count = 0) then
	    begin
				for i:=0 to (magasins.Count - 1) do
				begin
					close;
					SQL.Clear;
					SQL.add('SELECT codeArticle FROM '+ LowerCase(magasins[i]) +' WHERE codeArticle = ' + quotedstr(ref) );
					open;
					if Q_Magasins.FieldByName('codeArticle').AsString = ref then
					begin
						L_Magasin.Caption:= 'existe dans '+ magasins[i];
	        	CLB_Mag.Items.add(magasins[i]);
					end
					else begin
						L_Magasin.Caption:= 'null';
					end;
				end;
	   	end;
		end;

  end  {
    with Q_article_divers do
    begin
      active:=false;
      SQL.Clear;
      SQL.add('SELECT type FROM article_divers WHERE type = ' + quotedstr(ref) );
      active:=true;
    end;
    if Q_article_divers.FieldByName('type').AsString = ref then
    begin
      L_article_divers.Caption:= 'existe';
    end
    else begin
      L_article_divers.Caption:= 'null';
    end;
  }

  else begin
    showMessage('Veuillez renseignez une r�f�rence de 6 caract�res');
  end;
end {BtnRechClick};

procedure TForm1.BtnFermerClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.sqlCreate(Sender: TObject);
begin
  magasins:= TStringList.Create;
  with Q_magasins do
  begin
    close;
    SQL.Clear;
    SQL.add('SELECT nomMagasin FROM refmag ' );
    open;
    while not Eof do
    begin
      magasins.Add(FieldByName('nomMagasin').AsString);
      next;
    end
  end;
end;

procedure TForm1.B_AjoutClick(Sender: TObject);
begin
  Form3.Show;
end;


procedure TForm1.B_VoirClick(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.CLB_MagClickCheck(Sender: TObject);
var i: Integer;
begin
  B_Voir.Visible := true;
  B_Supprimer.Visible := true;
end;

end.

