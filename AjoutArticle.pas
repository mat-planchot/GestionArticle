unit AjoutArticle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, StdCtrls;

type
  TFormAjout = class(TForm)
    E_designation: TEdit;
    E_codeArticle: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    E_prix: TEdit;
    B_Ajout: TButton;
    C_magasins: TComboBox;
    StaticText5: TStaticText;
    Fermer: TButton;
    Con: TMyConnection;
    Q_listeMag: TMyQuery;
    Q_InsertArticle: TMyQuery;
    procedure B_AjoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FermerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAjout: TFormAjout;

implementation

{$R *.dfm}

procedure TFormAjout.B_AjoutClick(Sender: TObject);
var
  magitem: String;
begin
  magItem := C_magasins.Items[C_magasins.ItemIndex];
  with Q_InsertArticle do
  begin
  try
    SQL.Clear;
    SQL.Add('INSERT INTO '+ LowerCase(magItem) +'(codeArticle , designation, prix) '
    +'Values (:codeArticle, :designation, :prix);');
		ParamByName('codeArticle').AsString := E_codeArticle.Text;
		ParamByName('designation').AsString := E_designation.Text;
		ParamByName('prix').AsFloat := StrToFloat(E_prix.Text);
		Execute;
  finally
    Free;
  end;
  end;
end;

procedure TFormAjout.FormCreate(Sender: TObject);
begin
  with Q_listeMag do
	begin
		try
			SQL.Clear;
			SQL.Add('SELECT nomMagasin FROM refmag');
			Active:=true;
			while not Eof do
			begin
				C_magasins.Items.add(fieldbyname('nomMagasin').AsString);
				Next;
			end;
		finally
		Free;
		end;
	end;
end;

procedure TFormAjout.FermerClick(Sender: TObject);
begin
  FormAjout.Close;
end;

end.
