program tipe_data_sederhana;

var
    angka_int : integer; // variabel angka bertipe integer
    angka_real : real; // variabel angka bertipe real
    karakter : char; // variabel character bertipe char
    teks : string[50]; // variabel text bertipe string dengan panjang 50 karakter
    bool : boolean; // variabel boolean bertipe boolean
    nama, kelas, nim : string; // variabel string

begin
    // Inisialisasi variabel
    angka_int := 10;
    angka_real := 20.5;
    karakter := 'A';
    teks := 'Hello, Pascal';
    bool := true;
    nama := 'Rifki Nofianto';
    nim := '202343502152';
    kelas := 'R33';


    // Menampilkan isi variabel atau mencetak variabel
    writeln('Nama : ', nama);
    writeln('NIM : ', nim);
    writeln('Kelas : ', kelas); writeln;
    writeln('Tipe Data Sederhana');
    writeln('-----------------------');
    writeln('Angka Int: ', angka_int);
    writeln('Angka Real: ', angka_real);
    writeln('Karakter: ', karakter);
    writeln('Teks: ', teks);
    writeln('Boolean: ', bool);

    readln;
end.