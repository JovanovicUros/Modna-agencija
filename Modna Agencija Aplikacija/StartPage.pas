unit StartPage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TStart_Page = class(TForm)
    Rectangle2: TRectangle;
    Z: TLabel;
    Image1: TImage;
    Image3: TImage;
    Image2: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Start_Page: TStart_Page;

implementation

{$R *.fmx}

end.
