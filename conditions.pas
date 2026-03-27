program labs;
{$APPTYPE CONSOLE}
uses
  SysUtils, Math;
var i, b, N, variant: byte;
    h, a_s, b_s, tmp, xs, ys: Single;
    x, pos, neg, zeros, multy, ind: Integer;
const a = -1;
begin
  (*
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
  *)
   Randomize;
   Writeln('Input the borders and number of points: ');
   Readln(a_s, b_s, N);
   if a_s > b_s then begin
     tmp:= a_s;
     a_s:= b_s;
     b_s:= tmp;
   end;
   if N < 0 then N:= -N;

   h:= (b_s-a_s)/N;

   a_s := RoundTo(a_s,-2); Writeln('a = ', a_s:2);
   b_s := RoundTo(b_s,-2); Writeln('b = ', b_s:2);
   Writeln('N = ', N);
   h := RoundTo(h,-2); Writeln('h = ', h:2);

   case Random(3) of
   0: variant:= 4;
   1: variant:= 10;
   2: variant:= 13;
   end;
   Writeln('Variant ', variant);
   Writeln('-------------------------');
   Writeln(' |     x     |     y     | ');
   Writeln('-------------------------');
   xs:=a_s;

   while xs<=b_s do
   begin
   case variant of
     4:  ys:= Power(Sin(3*xs), 3) - Cos(xs);// var 4
     10: ys:= Power(3, Power(xs,3) - 2*xs) + 4 * Ln(xs*xs + 3) / Ln(4);// var 10
     13: ys:= Power(Power(xs,5) + 3 * Power(xs,3), 1/5) + 2 * Sin(xs);// var 13
    end;
    ys := RoundTo(ys,-2);
     Write(' |  ', xs:7:2, ' |  ');
     Writeln(ys:7:2, '    |  ');
     Writeln('-------------------------');
     xs:= xs + h;
   end;
   Readln;
end.
