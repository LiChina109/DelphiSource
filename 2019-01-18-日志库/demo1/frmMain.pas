unit frmMain;

interface

uses
  TLoggerUnit, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Log: TLogger;
begin
  Self.Memo1.Lines.Add('按钮被点击了');
  // 获取TLogger实例
  Log := TLogger.GetInstance;
  // 日志等级  Debug--> info---> waring---> error

  Log.Debug('debug:期待B站粉丝过万');
  Log.Info('Info:期待B站粉丝过万');
  Log.Warn('waring:期待B站粉丝过万');
  Log.Error('error:期待B站粉丝过万');

end;

end.
