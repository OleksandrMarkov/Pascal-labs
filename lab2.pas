var 
  a,b,c : real;
   
begin
  writeln('Лабораторна робота №2 (варіант №2)');
  (*Введення даних *) 
  write('a: ');
  read(a);
  write('b: ');
  read(b);
  write('c: ');
  read(c);
  
  if (a >= b) and (b >= c) then
  begin
    a := 2*a;
    b := 2*b;
    c := 2*c;
  end
  else
  begin
    a := abs(a);
    b := abs(b);
    c := abs(c);    
  end;
      
  writeln('A: ', a);
  writeln('B: ', b);
  writeln('C: ', c);  
end.