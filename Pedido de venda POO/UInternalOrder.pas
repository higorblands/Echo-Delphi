unit UInternalOrder;

interface

uses
  USaleOrder, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormInternalOrder = class(TFormSaleOrder)
    LDAV: TLabel;
    edtDav: TEdit;
  protected
    function Check: boolean; override;
    function save: boolean; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInternalOrder: TFormInternalOrder;

implementation

{$R *.dfm}
{ TFormOrderInternal }

function TFormInternalOrder.Check: boolean;
begin
  if inherited then
  begin
    if (StrToInt(edtSaleValue.Text) < 1000) then
    begin
      result := True;
    end
    else
    begin
      result := False;
    end;
  end
  else
  begin
    result := False;
  end;
end;

function TFormInternalOrder.save: boolean;
var
  data: TDateTime;
begin
  if Check then
  begin
    data := Date;
    inherited;
    edtDav.Text := SQL[0, 0] + FormatDateTime('yyyymmdd', data);
    result := True;
  end
  else
  begin
    Showmessage('Could not save internal sale ' + edtSaleNum.Text + '.');
    result := False;
  end;

end;

end.
