unit Login_1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TLogin1 = class(TForm)
    Rectangle2: TRectangle;
    Z: TLabel;
    Image1: TImage;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Label3: TLabel;
    Rectangle5: TRectangle;
    Label4: TLabel;
    Label5: TLabel;
    Rectangle1: TRectangle;
    Edit2: TEdit; // email
    Edit3: TEdit; // password
    Image2: TImage;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure Label3Click(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
  private
  public
  end;

var
  Login1: TLogin1;

implementation

uses Login, StartPage;

{$R *.fmx}

procedure TLogin1.Label3Click(Sender: TObject);
begin
  Log_In.Show;
  Login1.Hide;
end;

procedure TLogin1.Rectangle4Click(Sender: TObject);
begin
  Log_In.Show;
  Login1.Hide;
end;

procedure TLogin1.Rectangle5Click(Sender: TObject);
begin
  // 🔥 1. PROVERA MENADŽERA

  FDQuery1.Close;
  FDQuery1.SQL.Text := 'SELECT * FROM Menadzer WHERE email = :email AND password = :pass';

  FDQuery1.ParamByName('email').AsString := Edit2.Text;
  FDQuery1.ParamByName('pass').AsString := Edit3.Text;

  FDQuery1.Open;

  if not FDQuery1.IsEmpty then
  begin
    Start_Page.Show;   // ✔ menadžer ide na StartPage
    Login1.Hide;
    Exit;
  end;

  // 🔥 2. PROVERA KLIJENTA

  FDQuery1.Close;
  FDQuery1.SQL.Text := 'SELECT * FROM Klijent WHERE email = :email AND password = :pass';

  FDQuery1.ParamByName('email').AsString := Edit2.Text;
  FDQuery1.ParamByName('pass').AsString := Edit3.Text;

  FDQuery1.Open;

  if not FDQuery1.IsEmpty then
  begin
    Start_Page.Show;   // ✔ klijent ide na ISTU stranicu
    Login1.Hide;
    Exit;
  end;

  // 🔥 3. NIJE PRONAĐEN

  ShowMessage('Pogrešan email ili password');
end;

end.
