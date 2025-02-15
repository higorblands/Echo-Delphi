unit Unit1;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;
type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    function validar(a: string): boolean;
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
  arquivo, arquivocripto: TextFile;
  nameFile: string;
  h: char;
  ascii, i: integer;
begin
  if (validar(Edit1.Text) = false) then
  begin
    ShowMessage('Voc� deixou o campo em branco, n�o � poss�vel seguir.');
  end
  else
  begin
    nameFile :=Edit1.Text+'.txt';
    AssignFile(arquivo, nameFile);
    Delete(nameFile, Length(nameFile) - 3, 7);
    AssignFile(arquivocripto, nameFile + '_C.txt');
    Rewrite(arquivocripto);
    Reset(arquivo);
    while NOT EOF(arquivo) do
    begin
      if EOLn(arquivo) then
      begin
        readLn(arquivo, h);
        WriteLn(arquivocripto);
      end
      else
      begin
        read(arquivo, h);
        ascii := ord(h);
        if ascii > 266 then
        begin
         ascii := ascii - 266;
        end;
        Write(arquivocripto, char(ascii + 10));
      end;
    end;
    closeFile(arquivo);
    closeFile(arquivocripto);
  end;
end;
function TForm1.validar(a: string): boolean;
begin
  if (a = '') then
  begin
    result := false;
  end
  else
  begin
    result := true;
  end;
end;
end.
