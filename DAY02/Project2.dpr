program Project2;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Day2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDay2, Day2);
  Application.Run;
end.
