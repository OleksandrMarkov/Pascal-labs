program lb1;

{$APPTYPE CONSOLE}

uses
  SysUtils, Math;

var z1, z2, a, b : Real;
begin
  Writeln('Input a and b:');
  Readln(a, b);
  Writeln('Input values:');
  Writeln('a = ', a:6:2, '  b = ', b:6:2);

  z1 := Power(Cos(a) - Cos(b),2) - Power(Sin(a) - Sin(b),2);
  z2 := (-4) * Power(Sin((a-b)/2), 2) * Cos(a+b);

  Writeln('Z1 = ', z1:6:4);
  Writeln('Z2 = ', z2:6:4);
  Readln;
end.
