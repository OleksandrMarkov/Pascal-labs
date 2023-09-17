var
(* Коефіцієнти *)  
  a,b,c,d,l,f : real;
(* Розв'язки *)    
  x,y: real;
begin
  writeln('Лабораторна робота №1 (варіант №2)');
  writeln('Розв''язання системи рівнянь методом підстановки.');
  (*Введення даних *) 
  write('a: ');
  read(a);
  write('b: ');
  read(b);
  write('c: ');
  read(c);
  write('d: ');
  read(d);
  write('l: ');
  read(l);
  write('f: ');
  read(f);
  
  if ( a*l - d*b = 0 ) and (b*f - l*c <> 0) then
  begin
    writeln('Система немає розв''язків!');
  end
  else
    if ( a*l - d*b = 0 ) and (b*f - l*c = 0) then
    begin
      writeln('Система має безліч розв''язків!');
    end
    else
     if  a*l - d*b <> 0 then
     begin
       x := (l*c - b*f) / (a*l - d*b);
       y := (a*f - d*c) / (a*l - d*b);    
       x:= round(x, 4);
       y:= round(y, 4);    
       writeln('Розв''язок системи: (', x, '; ', y, ')');
     end;
end.