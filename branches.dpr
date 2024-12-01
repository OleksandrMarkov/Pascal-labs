program branches;

{$APPTYPE CONSOLE}

uses
  SysUtils;

  var x, y : Real;

begin
  Writeln('Input x and y:');
  Readln(x,y);
  if ( ((x >= 0) and (y <= (x-1)*(x-1))) or ( (x<=0) and (y<=0) ) )
  then Writeln ('The point is on the area')
  else Writeln('The point is not on the area');
  Readln;
end.
