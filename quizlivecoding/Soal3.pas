program soal2;
uses crt;

var
  a, b, c: real;

procedure nilai_terbesar(x, y, z: real);
var
  max: real;
begin
  max := x;
  if y > max then max := y;
  if z > max then max := z;
  writeln('Hasil Nilai Terbesar');
  writeln('nilai terbesar dari ketiga bilangan: ', max:0:2);
end;

begin
  clrscr;
  writeln('PROGRAM NILAI TERBESAR DARI 3 BILANGAN');
  write('masukkan nilai pertama : '); readln(a);
  write('masukkan nilai kedua   : '); readln(b);
  write('masukkan nilai ketiga  : '); readln(c);
  writeln;
  
  nilai_terbesar(a, b, c);
  
  readln;
end.