unit Login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TLog_In = class(TForm)
    Rectangle2: TRectangle;
    Z: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Image2: TImage;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Rectangle3: TRectangle;
    Label3: TLabel;
    Image3: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure Rectangle3Click(Sender: TObject);
  private
  public
  end;

var
  Log_In: TLog_In;

implementation

uses Login_1, SignUp;   // 🔥 povezivanje sa obe stranice

{$R *.fmx}

procedure TLog_In.Image2Click(Sender: TObject);
begin
  Login1.Show;   // ide na Login_1
  Log_In.Hide;
end;

procedure TLog_In.Image3Click(Sender: TObject);
begin
  Login1.Show;   // ide na Login_1
  Log_In.Hide;
end;

procedure TLog_In.Rectangle1Click(Sender: TObject);
begin
  Login1.Show;   // ide na Login_1
  Log_In.Hide;
end;

procedure TLog_In.Rectangle3Click(Sender: TObject);
begin
  Sign_Up.Show;  // 🔥 ide na SignUp
  Log_In.Hide;
end;

end.
