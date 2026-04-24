unit SignUp;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TSign_Up = class(TForm)
    Rectangle2: TRectangle;
    Z: TLabel;
    Image1: TImage;
    Image3: TImage;
    Rectangle4: TRectangle;
    Label3: TLabel;
    Rectangle5: TRectangle;
    Label4: TLabel;
    Rectangle1: TRectangle;
    Rectangle3: TRectangle;
    Edit2: TEdit;
    Edit1: TEdit;
    Rectangle6: TRectangle;
    Edit3: TEdit;
    Rectangle7: TRectangle;
    Edit4: TEdit;
    Label5: TLabel;
    Image2: TImage;
    procedure Rectangle4Click(Sender: TObject);
  private
  public
  end;

var
  Sign_Up: TSign_Up;

implementation

uses Login_1;   // povezivanje sa Login_1 formom

{$R *.fmx}

procedure TSign_Up.Rectangle4Click(Sender: TObject);
begin
  Login1.Show;   // vrati na Login_1
  Sign_Up.Hide;  // sakrij SignUp stranicu
end;

end.
