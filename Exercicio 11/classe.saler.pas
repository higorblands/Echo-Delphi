unit classe.saler;

interface

uses classe.person,system.classes, system.SysUtils;

type

  TSaler = class(TPerson)
  protected
  function save : boolean; override;
  public
    Percentage: real;
    SalerType: Char;
    function Check: boolean; override;
  private
  Commission : currency;
  TypeSaler : Char;

  end;

implementation

{ TSaler }

function TSaler.Check: boolean;
begin
  if inherited then
  begin
    if (Commission > 0) AND ((TypeSaler = 'i' ) OR (TypeSaler = 'e')) then
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
function TSaler.save: boolean;
begin
 inherited;
  SQL[length(SQL)-1] := 'VENDEDOR: ' + SQL[length(SQL)-1] + ' | Comiss�o: ' + CurrToStr(Commission) + ' | Tipo de vendedor: ' + TypeSaler;
  result := True;
end;

end.
