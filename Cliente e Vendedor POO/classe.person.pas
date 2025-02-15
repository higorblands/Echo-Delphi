unit classe.person;

interface

uses system.classes, system.SysUtils;

type
  TPerson = Class
  protected
    function Check: boolean; virtual;
    function doSQL(SQL: TStringList): boolean; virtual;
  public
    Name,aux: String;
    Age: Integer;
    function save(SQL: TStringList): boolean;
  End;

implementation

function TPerson.Check: boolean;
begin
  if (name <> '') AND (length(name) <= 50) AND (IntToStr(Age) <> '') AND
    (0 < Age) AND (Age < 130) then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

function TPerson.doSQL(SQL: TStringList): boolean;
begin
  Result := False;
  aux := ('Nome: ' + name + ' | Idade: ' + IntToStr(Age)) + aux ;
  SQL.Add(aux);
  Result := True;
end;

function TPerson.save(SQL: TStringList): boolean;
begin
  Result := False;
  if Check then
  begin
    if doSQL(SQL) then
    begin
      Result := True;
    end;
  end;
end;

end.
