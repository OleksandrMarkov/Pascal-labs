const n = 4; // розмірність матриці
var 
  i, j : integer; // ітератори
  amin, amax : real; // мінімальний і максимальний елементи матриці
  imin, imax: integer; // їхні індекси
  // матриця
  arr : array [1..n, 1..n] of real = 
( 
 (2, 1, 3.5, 0),
 (-2, 3, 0.1, 4.5),
 (-4, -1, 1.5, 1.6),
 (5, -5, 2.5, 4)
);
 res : real; // результат
begin
 // відображення матриці
 writeln ('Матриця розмірності ', n, 'x', n, ':');
 for i := 1 to n do
 begin
   for j := 1 to n do
     write (arr[i][j]:3, ' ');     
   writeln;
 end;
 // пошук індексів 
 amin := arr[1][1];
 amax := arr[1][1];
 imin := 1;
 imax := 1; 
 for i := 1 to n do 
 begin
  for j := 1 to n do
    if arr[i][j] > amax then
    begin
      amax := arr[i][j];
      imax := i;
    end
    else
      if arr[i][j] < amin then
    begin
      amin := arr[i][j];
      imin := j;
    end;
  end; 
 writeln ('Максимальний елемент матриці знаходиться в рядку № ', imax);
 writeln ('Мінімальний елемент матриці знаходиться в стовпці № ', imin);
 // скалярний добуток imax-рядка й imin-стовпця 
 for i := 1 to n do
   res := res + arr[imax][i] * arr[i][imin];
 writeln('Скалярний добуток рядка № ', imax, ' і стовпця № ', imin, ': ', res);
end.