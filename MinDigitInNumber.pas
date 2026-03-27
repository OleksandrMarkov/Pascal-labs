program labs;
{$APPTYPE CONSOLE}
uses
  SysUtils, Math;
var i, digits_cnt, minval: byte;
    ind : Integer;
    big: Real;
    bigstr: string;
const max_digit = 9;
begin
    big:= 54321026038;
    bigstr:= FloatToStr(big);
    digits_cnt:= Length(bigstr);
    ind:= 0;
    minval:= max_digit;
    for i:= 1 to digits_cnt do
    begin
      if StrToInt(bigstr[i]) < minval then begin
        minval:= StrToInt(bigstr[i]);
      end;
    end;
    Writeln('Minval: ', minval);
    for i:= 1 to digits_cnt do
    begin
      if StrToInt(bigstr[i]) = minval then
        ind:= i;
    end;
    Writeln('Index: ', ind);
    Readln;
end.
