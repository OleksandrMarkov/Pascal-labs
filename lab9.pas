{
Дано файл f, компоненти якого є цілими числами.
Отримати в файлі g всі компоненти файла f,
які діляться на 3 і не діляться на 7.
}

var 
  f, g : text; // файли
  s : string;  // рядок
  i : integer; // ітератор
  numbers: array of string; // числа в рядку
  
  begin
    // відкриття файлів на читання / запис відповідно
    assign(f, 'f.txt');
    reset(f);
    assign(g, 'g.txt');
    rewrite(g);
    
    i := 0;
    while not EOF(f) do
    begin
      readln(f,s);
      numbers:= s.Split(); // розбиття рядку на масив
      s := '';
      for i := 0 to numbers.Length - 1 do
        if ( strToInt(numbers[i]) mod 3 = 0 ) and
          ( strToInt(numbers[i]) mod 7 <> 0 ) then
            s := s + numbers[i] + ' ';
      writeln(g,s); // запис
    end;
    // закриття файлів
    close(g);
    close(f);
  end.
