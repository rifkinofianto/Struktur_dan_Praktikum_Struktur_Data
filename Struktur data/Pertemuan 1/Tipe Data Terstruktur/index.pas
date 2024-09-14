program tipe_data_terstruktur;

var
    mahasiswa : record // variabel record bertipe mahasiswa
        nim : string;
        nama : string[50];
        nilai : real;
        grade : char;
    end;

    arr_angka : array[1..10] of integer; // variabel array bertipe integer
    angka_set : set of 1..100; // variabel set yang berisi angka dari 1 hingga 100

    myFile : text; // variabel file bertipe teks
    i : integer;

begin
    writeln('Nama : Rifki Nofianto');
    writeln('NIM : 202343502152');
    writeln('Kelas : R33'); 
    writeln;
    writeln('Tipe Data Terstruktur');
    writeln('---------------------');
    
    mahasiswa.nama := 'Leon S. Kennedy';
    mahasiswa.nim := '202343509999';
    mahasiswa.nilai := 90.5;
    mahasiswa.grade := 'A';

    Assign(myFile, 'output.txt'); // Mengaitkan variabel myFile dengan file 'output.txt'
    Rewrite(myFile); // Membuka file untuk ditulis

    Writeln(myFile, 'Mahasiswa: ', mahasiswa.nama); // Menulis teks ke file
    Writeln(myFile, 'NIM: ', mahasiswa.nim); // Menulis teks ke file
    Writeln(myFile, 'Nilai: ', mahasiswa.nilai); // Menulis teks ke file
    Writeln(myFile, 'Grade: ', mahasiswa.grade); // Menulis teks ke file

    Close(myFile); // Menutup file

    for i := 1 to 10 do // Mengisi array dengan angka kelipatan 2
        arr_angka[i] := i * 2;

    writeln('Array angka: ');
    for i := 1 to 10 do // Menampilkan isi array
        writeln('arr_angka[', i, '] = ', arr_angka[i]);
    
    writeln;

    angka_set := [2, 7, 11, 200, 4]; // Mengisi set

    write('Set angka (default) : '); // Menampilkan isi set
    for i := 1 to 100 do
        if i in angka_set then
            write(i, ', ');

    writeln;

    angka_set := angka_set + [5, 15]; // Menambahkan elemen ke set

    write('Set angka setelah ditambah: '); // Menampilkan set setelah ditambah
    for i := 1 to 100 do
        if i in angka_set then
            write(i, ', ');
            
    readln;
end.