unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  classe.person, classe.client, classe.saler, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    btSave: TButton;
    edtName: TEdit;
    edtAge: TEdit;
    btShow: TButton;
    PageControl1: TPageControl;
    TabClient: TTabSheet;
    TabSaler: TTabSheet;
    edtPaymentDay: TEdit;
    edtAdress: TEdit;
    edtCommission: TEdit;
    edtType: TEdit;
    ListBox1: TListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
