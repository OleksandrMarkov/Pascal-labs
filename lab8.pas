{
Дано:  type  M=set  of  0..99;
        A=set of byte;
Обчислити кількість елементів в множині A типу M.
}

type  M=set  of  0..99;
A = set of byte;

var 
  setA : A;
  res : byte;
 
begin
// Заповнення множини довільними значеннями типу byte (0..255)
for var i :=0 to 255 do
  include(setA, random(0,255));
 
 foreach var i in setA do
   begin
     if i < 100 then inc(res);
   end;
   
  writeln('Елементів типу M: ', res);
end.