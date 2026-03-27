program labs;
{$APPTYPE CONSOLE}
uses
  SysUtils;
var i: byte;
    x, pos, neg, zeros, multy, ind: Integer;
const a = -1;
begin
  writeln('Variant 4: ');
  pos:= 0; neg:= 0; zeros:= 0;
  for i:= 1 to 15 do
  begin
    write('Number ', i, ': '); Readln(x);
    if x > 0 then pos := Succ(pos)
    else if x < 0 then neg := Succ(neg)
    else zeros := Succ(zeros);
  end;
  Writeln('Positive: ', pos);
  Writeln('Negative: ', neg);
  Writeln('Zeros: ', zeros);
  Readln;
  writeln('Variant 10: ');
  multy := 1;
  for i:=4 to 21 do
  begin
    multy:= multy * a;
    Writeln(IntToStr(i), ' - ', IntToStr(i+1), ' = ', a);
  end;
  Writeln('Multiplication: ', multy);
  Readln;
  writeln('Variant 13: ');
  ind:= 0;
  for i:= 1 to 15 do
  begin
    write('Number ', i, ': '); Readln(x);
    if x <> 0 then ind := i;
  end;
  if ind > 0 then Writeln('Last no-zero number''s index: ', ind)
  else Writeln('Only zeros are here...');
  Readln;
end.
