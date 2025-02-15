unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  classe.person, classe.client, classe.saler, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    btSaveClient: TButton;
    edtName: TEdit;
    edtAge: TEdit;
    PageControl1: TPageControl;
    TabClient: TTabSheet;
    TabSaler: TTabSheet;
    edtPaymentDay: TEdit;
    edtAdress: TEdit;
    edtCommission: TEdit;
    edtType: TEdit;
    btSaveSaler: TButton;
    btSee: TButton;
    procedure btSaveClientClick(Sender: TObject);
    procedure btSaveSalerClick(Sender: TObject);
    procedure btSeeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     SQL: TStringList;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btSaveClientClick(Sender: TObject);
var
  ObjClient: TClient;
begin
  ObjClient := TClient.Create;
  try
    ObjClient.Name := edtName.Text;
    ObjClient.Age := StrToInt(edtAge.Text);
    ObjClient.dayPayment := StrToInt(edtPaymentDay.Text);
    ObjClient.Adress := edtAdress.Text;
    if ObjClient.save(SQL) then
    begin
    ShowMessage('Cliente ' + edtName.Text + ' cadastrado com sucesso !');
    end
    else
    begin
    ShowMessage('Erro ao cadastrar o Cliente.');
    end;
    edtName.Clear;
    edtAge.Clear;
    edtPaymentDay.Clear;
    edtAdress.Clear;
  finally
    ObjClient.Free;
  end;
end;

procedure TForm1.btSaveSalerClick(Sender: TObject);
var
  ObjSaler: TSaler;
begin
  ObjSaler := TSaler.Create;
  try
    ObjSaler.Name := edtName.Text;
    ObjSaler.Age := StrToInt(edtAge.Text);
    ObjSaler.Commission := StrToFloat(edtCommission.Text);
    ObjSaler.TypeSaler := AnsiUpperCase(edtType.Text);
    if ObjSaler.save(SQL) THEN
    BEGIN
      ShowMessage('Vendedor ' + edtName.Text + ' cadastrado com sucesso !');
    END
    else
    BEGIN
      showmessage('Erro ao cadastrar o Vendedor.');
    END;

    edtName.Clear;
    edtAge.Clear;
    edtCommission.Clear;
    edtType.Clear;
  finally
    ObjSaler.Free;
  end;
end;

procedure TForm1.btSeeClick(Sender: TObject);
begin
 ShowMessage(SQL.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SQL := TStringList.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
 SQL.Free;
end;

end.
