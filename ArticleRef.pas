unit ArticleRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TForm1 = class(TForm)
    DB_statsclipper: TDatabase;
    DB_VGE3: TDatabase;
    DB_master: TDatabase;
    Panel1: TPanel;
    BtnRech: TButton;
    EditRef: TEdit;
    LabelRef: TLabel;
    Q_article_divers: TQuery;
    Q_article_interior: TQuery;
    Q_VGE3_article: TQuery;
    Q_Magasin: TQuery;
    L_article_divers: TLabel;
    STextDivers: TStaticText;
    STextInterior: TStaticText;
    STextVge3: TStaticText;
    STextMagasins: TStaticText;
    L_article_interior: TLabel;
    L_VGE3: TLabel;
    L_Magasin: TLabel;
    BtnFermer: TButton;
    Q_param_Interior: TQuery;
    DB_param_Interior: TDatabase;
    STextExistence: TStaticText;
    procedure BtnRechClick(Sender: TObject);
    procedure BtnFermerClick(Sender: TObject);
    procedure sqlCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ref: String;
  ref4: String;
  magasins: tstringlist;
  i: integer;
  magasinsCount: integer;
implementation

{$R *.dfm}
procedure TForm1.BtnRechClick(Sender: TObject);
begin
  ref:= UpperCase(EditRef.Text);
  if (length(ref) < 6) or (length(ref) > 6) then
  begin
    showMessage('Veuillez renseignez une référence de 6 caractères');
  end
  else begin

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

  with Q_article_interior do
  begin
    close;
    SQL.Clear;
    SQL.add('SELECT type FROM article_interior WHERE type = ' + quotedstr(ref) );
    open;
  end;
  if Q_article_interior.FieldByName('type').AsString = ref then
  begin
    L_article_interior.Caption:= 'existe';
  end
  else begin
    L_article_interior.Caption:= 'null';
  end;

  with Q_VGE3_article do
  begin
    ref4:= Copy(ref, 0, 4);
    close;
    SQL.Clear;
    SQL.add('SELECT type FROM article WHERE type = ' + quotedstr(ref4) );
    open;
  end;
  if Q_VGE3_article.FieldByName('type').AsString = ref4 then
  begin
    L_VGE3.Caption:= 'existe';
  end
  else begin
    L_VGE3.Caption:= 'null';
  end;

  with Q_Magasin do
  begin
    magasinsCount:= magasins.Count - 1;
    for i:=0 to magasinsCount do
    begin
      close;
      SQL.Clear;
      SQL.add('SELECT aarcode FROM '+ magasins[i] +'.dbo.article WHERE aarcode = ' + quotedstr(ref) );
      open;
      if Q_Magasin.FieldByName('aarcode').AsString = ref then
      begin
        L_Magasin.Caption:= 'existe dans '+ magasins[i];
        break;
      end
      else begin
        L_Magasin.Caption:= 'null';
      end;
    end;
  end;
  end;
end {BtnRechClick};

procedure TForm1.BtnFermerClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.sqlCreate(Sender: TObject);
begin
  magasins:= TStringList.Create;
  with Q_param_Interior do
  begin
    close;
    SQL.Clear;
    SQL.add('SELECT nombase FROM refmag WHERE actif = ''T'' ' );
    open;
    while not Q_param_Interior.Eof do
    begin
      magasins.Add(Q_param_Interior.FieldByName('nombase').AsString);
      next;
    end
  end;
end;

end.

