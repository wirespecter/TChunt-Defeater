unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, shellapi, StdCtrls;

type 
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  protected
    procedure WMDROPFILES (var Msg: TWMDropFiles); message WM_DROPFILES;
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function WriteEof(FileName:String; loops:integer) :String;
var
  F: TextFile;
  I: integer;
begin
  AssignFile(F,FileName);
  Append(F);
  for I := 1 to loops do
  begin
  Writeln(F,#0);
  end;
  CloseFile(F);
end;

procedure TForm1.WMDROPFILES(var Msg: TWMDropFiles);
var
  i, amount: Integer;
  FileName: array[0..MAX_PATH] of Char;
begin
  inherited;

  try
    Amount := DragQueryFile(Msg.Drop, $FFFFFFFF, FileName, MAX_PATH);
    for i := 0 to (Amount - 1) do
    begin
      DragQueryFile(Msg.Drop, i, FileName, MAX_PATH);
      WriteEof(FileName,strtoint(Edit1.Text));
      Edit1.text := inttostr(strtoint(Edit1.text) +1);
      Showmessage('Done and Done! '+inttostr(strtoint(Edit1.Text)*3)+' NOPS Added at EOF!');
    end;
  finally
    DragFinish(Msg.Drop);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DragAcceptFiles(Handle, True);
end;

end.
