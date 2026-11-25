program NilaiMahasiswa;
uses crt;
var
  nama: string;
  tugas, uts, uas, akhir: real;
  grade: char;

procedure InputData(var t, u, a: real);
begin
  write('Nilai Tugas: '); readln(t);
  write('Nilai UTS: '); readln(u);
  write('Nilai UAS: '); readln(a);
end;

procedure HitungNilai(t, u, a: real; var h: real);
begin
  h := t * 0.3 + u * 0.3 + a * 0.4;
end;

procedure TentukanGrade(h: real; var g: char);
begin
  if h >= 85 then g := 'A'
  else if h >= 70 then g := 'B'
  else if h >= 55 then g := 'C'
  else if h >= 40 then g := 'D'
  else g := 'E';
end;

procedure ProsesNilai(t, u, a: real;
                     var h: real; var g: char);
begin
  HitungNilai(t, u, a, h);
  TentukanGrade(h, g);
end;

procedure TampilkanHasil(n: string; h: real; g: char);
begin
  writeln('Nama: ', n);
  writeln('Nilai Akhir: ', h:5:2);
  writeln('Grade: ', g);
end;

begin
  clrscr;
  write('Nama mahasiswa: '); readln(nama);
  inputdata(tugas, uts, uas);
  writeln('Hasil');
  prosesnilai(tugas, uts, uas, akhir, grade);
  tampilkanhasil(nama, akhir, grade);
  readln;
end.