program Power_series;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const maxiter = 500; { iterations num }
var x, eps : Double; { argument and exactness }
    c, y : Double; { part and sum }
    n : Integer; {number of the part}
    done : Boolean;
begin
  Writeln('Input argument and exactness');
  Readln(x, eps);
  done := True;
  c := x;
  y := c;
  n := 1;
  while Abs(c) > eps do begin
    c := -c * x * x  * (2*n + 1) / (2*n + 3);
    y := y + c;
    inc(n);
    if n <= maxiter then Continue;
    Writeln('Divergence of series!');
    done := False; Break;
  end;
  if done then
    Writeln('Argument: ', x:10:6, #13#10,
    'Exactness ', eps:8:6, 'Iterations = ', n);
  Readln;
end.
