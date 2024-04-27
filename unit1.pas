unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Label4Click(Sender: TObject);
    procedure Label5DragDrop(Sender, Source: TObject; X, Y: Integer);
  private

  public

  end;

var
  Form1: TForm1;
  Mini: Boolean = False;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label1.caption := (IntToStr(X));
  Label2.caption := (IntToStr(Y));
end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;

procedure TForm1.Label5DragDrop(Sender, Source: TObject; X, Y: Integer);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 // repeat
   // if Mini = True Then Application.Minimize;
  //until false;
end;

procedure TForm1.FormResize(Sender: TObject);
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Label3.caption := Edit1.Text;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Mini := True;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Edit1.Text:='Type here...';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label3.Caption:=Label3.Caption + ' Accepted';
end;

end.

