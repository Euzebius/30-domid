program Project3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, IOUtils, Classes;

var
  systemini: string = 'C:\Windows\system.ini';
  FileContent: TStringList;
  NewFolder: string;
  FileName: string;


begin
  try
    { Try to read a common windows file };
    TFile.ReadAllText(systemini);
    writeln('File read')
    { Try to write "euz was here" in %USERPROFILE%\AppData\Local\Updater\.euz.txt};
    FileContent := TStringList.Create;
    FileContent.Add('euz was here');
    NewFolder := GetEnvironmentVariable('USERPROFILE') + '\\AppData\\Local\\Updater';
    if not DirectoryExists(NewFolder) then
      ForceDirectories(NewFolder);
    FileName := NewFolder + '\\.euz.txt';
    FileContent.SaveToFile(FileName);
    writeln('File written');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
