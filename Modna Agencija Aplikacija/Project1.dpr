program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Welcome in 'Welcome.pas' {ModnaAgencija},
  Login in 'Login.pas' {Log_In},
  Login_1 in 'Login_1.pas' {Login1},
  SignUp in 'SignUp.pas' {Sign_Up},
  StartPage in 'StartPage.pas' {Start_Page};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TModnaAgencija, ModnaAgencija);
  Application.CreateForm(TLog_In, Log_In);
  Application.CreateForm(TLogin1, Login1);
  Application.CreateForm(TSign_Up, Sign_Up);
  Application.CreateForm(TSign_Up, Sign_Up);
  Application.CreateForm(TStart_Page, Start_Page);
  Application.Run;
end.
