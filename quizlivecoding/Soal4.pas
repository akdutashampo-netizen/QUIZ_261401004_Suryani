program Soal4;
uses crt;

type
  TMatriks = array[1..10, 1..10] of integer;
var
  mat: TMatriks;
  baris, kolom: integer;

procedure IsiMatriks(var M: TMatriks; b, k: integer);
var
  i, j: integer;
begin
  for i := 1 to b do
  begin
    for j := 1 to k do
    begin
      write('Elemen [', i, ',', j, ']: ');
      readln(M[i, j]);
    end;
  end;
end;

function JumlahElemen(M: TMatriks; b, k: integer): integer;
var
  i, j, total: integer;
begin
  total := 0;
  for i := 1 to b do
    for j := 1 to k do
      total := total + M[i, j];
  JumlahElemen := total;
end;

begin
  clrscr;
  write('Jumlah baris (maks 10): '); readln(baris);
  write('Jumlah kolom (maks 10): '); readln(kolom);

  IsiMatriks(mat, baris, kolom);

  writeln('Total seluruh elemen matriks = ', JumlahElemen(mat, baris, kolom));
  readln;
end.