unit Welcome;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.Controls.Presentation;

type
  TModnaAgencija = class(TForm)
    Rectangle1: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle2: TRectangle;
    Z: TLabel;
    Image1: TImage;
    Image3: TImage;
    Image2: TImage;
    procedure Rectangle1Click(Sender: TObject);
  private
  public
  end;

var
  ModnaAgencija: TModnaAgencija;

implementation

uses Login;   // povezivanje sa login formom

{$R *.fmx}

procedure TModnaAgencija.Rectangle1Click(Sender: TObject);
begin
  Log_in.Show;        // otvara login stranicu
  ModnaAgencija.Hide; // sakriva welcome
end;

end.
