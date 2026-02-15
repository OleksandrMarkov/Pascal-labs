program Project1;

uses
  SysUtils, Math;

var x,y : Double;

begin
  write('Input x: ');
  Readln(x);
  writeln;
  try
    writeln('Variant 4: ');
    writeln('Y = ( sin(3x) )^3 - cos(x)');
    y := Power(Sin(3*x), 3) - Cos(x);
    y := RoundTo(y,-2);
    writeln('Y = ', y:0:2); // 2 points after comma
    writeln;
    writeln('Variant 10: ');
    writeln('Y = 3 ^ ( x^3 - 2*x) + 4 * log4(x^2 + 3)');
    y := Power(3, Power(x,3) - 2*x) + 4 * Ln(x*x + 3) / Ln(4);
    Writeln('Y = ', y:0:2);
    writeln;
    writeln('Variant 13: ');
    writeln('Y = (x^5 + 3*x^3)^(1/5) + 2 * sin(x)');
    y := Power(Power(x,5) + 3 * Power(x,3), 1/5) + 2 * Sin(x);
    Writeln('Y = ', y:0:2);
    writeln;
  except
    on E: Exception do
      Writeln('Error: ', E.Message);
  end;
  Readln;
end.
