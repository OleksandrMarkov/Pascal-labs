program lab7;
const
size : byte = 10;

type t_arr10 = array[1..size] of real;

var 
  A : t_arr10 = (2, 0, 1, 0, 5, -6, 1.5, 8, -8, 7.5);
  B : t_arr10 = (-1, 0, 2, 4, 1, 9, -1, -1, -1.5, -1); 
  C : t_arr10 = (0, 3, 1.5, 6, 2, -5, -1, 0, -2, -3);
  t, Amin, Amax, Bmin, Bmax, Cmin, Cmax, BCmin, BCmax : real;

procedure display_array(arr : t_arr10; size : byte );
  var 
    i: byte;
  begin
    for i := 1 to size do
      write(arr[i], ' ');
    writeln();
  end;
  
procedure nmin (arr : t_arr10; size : byte; var min : real);
  var
    i : byte;
  begin
    min := arr[1];
    for i := 2 to size do
    begin
      if arr[i] < min then
        min := arr[i];
    end;
  end;
  
procedure nmax (arr : t_arr10; size : byte; var max : real);
  var
    i : byte;
  begin
    max := arr[1];
    for i := 2 to size do
      begin
        if arr[i] > max then
          max := arr[i];
      end;
  end; 

procedure nmin2arr(arr1 : t_arr10; arr2 : t_arr10; size : byte; var res: real);
  var
    i : byte;
  begin
    res := arr1[1] + arr2[1];
    for i := 2 to size do
      begin
        if arr1[i] + arr2[i] < res then
          res := arr1[i] + arr2[i];
      end;
  end;

procedure nmax2arr(arr1 : t_arr10; arr2 : t_arr10; size : byte; var res: real);
  var
    i : byte;
  begin
    res := arr1[1] + arr2[1];
    for i := 2 to size do
      begin
        if arr1[i] + arr2[i] > res then
          res := arr1[i] + arr2[i];
      end;
  end;
  
begin
  write ('Лабораторна робота №7 (варіант №2)'); writeln();
  write ('Масив А: ');  display_array(A, size);
  write ('Масив B: ');  display_array(B, size);
  write ('Масив C: ');  display_array(C, size);
  
  nmin(A, size, Amin); 
  nmax(B, size, Bmax);

  if Amin < Bmax then
    begin
      nmin(B, size, Bmin);
      nmax(A, size, Amax);
      nmax(C, size, Cmax);
      nmin2arr(B, C, size, BCmin);
      t := Bmin / Amax  + Cmax / BCmin;
    end
  else
    begin
      nmax2arr(B, C, size, BCmax);
      nmin(C, size, Cmin);      
      t := BCmax + Cmin;
    end;
  writeln('t = ', t);    
  
end.
