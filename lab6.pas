const 
symbols: string = '0123456789ABCDEF';
values: array[0..15] of byte=(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15);
base : integer = 16;
var input16: string; // 16-кове число на вході
    position : integer; // розряд числа
    output10: longint; // 10-кове число на виході 
   i,j : integer ; // ітератори  
begin
  write ('16-кове число: ');
  readln(input16);
  output10 := 0; position := 1;
  
  for i := length(input16) downto 1 do
  begin
    for j := 0 to 15 do
      if input16[i]  = symbols[j + 1] then
      begin
        output10 := output10 + values[j] * position;
        position := position * base;
      end;
  end;
write ('10-кове число: ', output10);
end.