program perkalian_matrix; // Program untuk perkalian dua matriks

const
    MAX_DATA = 100; // Maksimal ukuran matriks

var
    a, b, c : array[1..MAX_DATA, 1..MAX_DATA] of integer; // Matriks A, B, dan C
    baris, kolom, i, j : integer; // Variabel untuk menyimpan ukuran matriks dan indeks

begin
    writeln('Nama  : Rifki Nofianto'); // Menampilkan nama
    writeln('NIM   : 202343502152'); // Menampilkan NIM
    writeln('Kelas : R33'); // Menampilkan kelas
    writeln;
    writeln('Penjumlahan Matrix'); // Judul program
    writeln('------------------');

    // Input ukuran matriks
    write('Banyaknya Baris : '); readln(baris); // Input jumlah baris
    write('Banyaknya Kolom : '); readln(kolom); // Input jumlah kolom
    writeln;

    // Input matriks A
    writeln('Input Matriks A');
    for i := 1 to baris do
    begin
        for j := 1 to kolom do
        begin
            write('A[', i, '][', j, '] : '); 
            readln(a[i, j]); // Membaca elemen matriks A
        end;
    end;
    writeln;

    // Input matriks B
    writeln('Input Matriks B');
    for i := 1 to baris do
    begin
        for j := 1 to kolom do
        begin
            write('B[', i, '][', j, '] : '); 
            readln(b[i, j]); // Membaca elemen matriks B
        end;
    end;
    writeln;

    // Tampilkan matriks A
    writeln('Matriks A');
    writeln('---------');
    for i := 1 to baris do
    begin
        for j := 1 to kolom do
        begin
            write(a[i, j]:4); // Mengatur tampilan agar rapi
        end;
        writeln; // Berpindah ke baris berikutnya
    end;
    writeln;

    // Tampilkan matriks B
    writeln('Matriks B');
    writeln('---------');
    for i := 1 to baris do
    begin
        for j := 1 to kolom do
        begin
            write(b[i, j]:4); // Mengatur tampilan agar rapi
        end;
        writeln; // Berpindah ke baris berikutnya
    end;
    writeln;

    // Penjumlahan matriks A dan B
    for i := 1 to baris do
        for j := 1 to kolom do
            c[i, j] := a[i, j] * b[i, j]; // Mengalikan elemen matriks A dan B
    
    // Tampilkan hasil perkalian matriks
    writeln('Hasil Perkalian Matriks');
    writeln('-------------------------');
    for i := 1 to baris do
    begin
        for j := 1 to kolom do
        begin
            write(c[i, j]:4); // Mengatur tampilan hasil
        end;
        writeln; // Berpindah ke baris berikutnya setelah tiap baris selesai
    end;

    readln; // Menunggu input sebelum program selesai
end.
