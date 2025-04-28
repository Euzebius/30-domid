unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.StdActns;

type
  TDay2 = class(TForm)
    Button1: TButton;
    ActionList1: TActionList;
    WindowClose1: TWindowClose;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Day2: TDay2;

implementation

{$R *.dfm}

end.
