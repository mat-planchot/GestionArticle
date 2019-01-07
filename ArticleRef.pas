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
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    L_article_interior: TLabel;
    L_VGE3: TLabel;
    L_Magasin: TLabel;
    Button1: TButton;
    Q_param_Interior: TQuery;
    DB_param_Interior: TDatabase;
    StaticText5: TStaticText;
    procedure BtnRechClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sqlCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ref: string;
  ref4: string;
  magasins: tstringlist;
  i: integer;
  magasinsCount: integer;
implementation

{$R *.dfm}
procedure TForm1.BtnRechClick(Sender: TObject);
begin
  ref:= EditRef.Text;

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
    //ref4:= ref.SubString(4);
    close;
    SQL.Clear;
    SQL.add('SELECT type FROM article WHERE type = ' + quotedstr(ref) );
    open;
  end;
  if Q_VGE3_article.FieldByName('type').AsString = ref then
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


 { with Q_Hennin_Beaumont do
  begin
    for i:=0 to High(magasins) do

      close;
      SQL.Clear;
      SQL.add('SELECT aarcode FROM henin_beaumont.dbo.article WHERE aarcode = ' + quotedstr(ref) );
      open;
    end;
  end;
  if Q_Hennin_Beaumont.FieldByName('aarcode').AsString = ref then
  begin
    L_Magasin.Caption:= 'existe';
  end
  else begin
    L_Magasin.Caption:= 'null';
  end;  }

end {BtnRechClick};

procedure TForm1.Button1Click(Sender: TObject);
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

