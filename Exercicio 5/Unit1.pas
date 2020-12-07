unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    edtNome: TEdit;
    edtIdade: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    arrSoores: array [1 .. 99] of string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: integer;
begin
  for i := 1 to length(arrSoores) do
  begin
    arrSoores[i] := edtNome.Text;
  end;

  for i := 1 to length(arrSoores) do
  begin
    ListBox1.Items.Add(arrSoores[i]);
  end;

end;

end.
