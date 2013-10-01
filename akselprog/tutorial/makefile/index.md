---
title: "Tutorial: Makefile"
layout: page
---
**Catatan**: Tutorial ini menggunakan implementasi GNUMakefile

**Lainnya**: [Menginstall Makefile](/akselprog/tutorial/makefile/install.html) | [Rakefile](/akselprog/tutorial/rakefile/ "Makefile menggunakan Ruby")

Sebelum mengetahui tentang Makefile, anda paling tidak harus paham tentang dasar-dasar command line (terutama Linux). 

Contoh file Makefile:

{% highlight makefile %}
default: hello.o compile
clean:
    rm -rf build/*.o
    rm -rf dist/bin/*
hello.o: clean 
    gcc -Wall -c main.cpp -o build/hello.o
compile:
    gcc -Wall build/hello.o -o dist/bin/hello

install:
    cp dist/bin/hello /usr/local/bin/
uninstall:
    rm -rf /usr/local/bin/hello

{% endhighlight %}

***Apa itu Make?***: Make adalah program yang berisi instruksi, tiap instruksi berisi perintah command-line. Dalam contoh diatas `default`, `hello.o` dan `compile` adalah nama dari instruksi. Sedangkan `gcc -c main.cpp -o build/hello.o` adalah perintah command line yang akan di otomatisasi.

Contoh Makefile diatas adalah: otomatisasi pekerjaan untuk: menghapus file executable dan mengkompilasi kode sumber. Kegunaaan makefile banyak sekali, bahkan bisa untuk pekerjaan sehari-hari loh.

***Kenapa (menggunakan) Make?*** : Kode sumber dalam pemprograman kadang bisa menjadi sangat besar jumlahnya, dan mengkompilasi mereka satu-satu bukan main capeknya, makanya Makefile membantu developer untuk mengotomatisasikan pekerjaan mereka dengan instruksi-instruksi misalnya untuk membersihkan seluruh file objek .o dari sebuah direktori, mengkopi file hasil kompilasi ke directory /usr/local/bin misalnya.

***Bagaimana cara menggunakannya?*** : Di command-line, masuk ke directory dimana Makefile berada, kemudian ketik `make` di command-line. Program `make` ini akan mencari file `GNUMakefile` atau `Makefile`, pada umumnya `Makefile` lebih banyak digunakan sebagai standard nama filenya. Lalu `make` akan mencari instruksi `default`.

### Perintah

`make -f filename` : Jika kita mempunyai file Makefile dengan nama yang tidak lazim, buat program `make` mengerti apa nama file makefile yang anda gunakan dengan perintah, contoh: `make -f makefilegue`. Berdasarkan standar dan *readibilitas*, selalu gunakan nama `Makefile`!

`make namainstruksi` : bisa digunakan jika kita ingin langsung mengeksekusi instruksi tertentu, misalnya saya ingin mengeksekusi instruksi `install` dari contoh diatas. Maka saya tinggal menuliskan perintah: `make install`.

### Detail Format Penulisan

`default: hello.o compile` : Instruksi `default` adalah instruksi yang selalu didahulukan oleh program `make`. Dalam contoh diatas, instruksi `default` tidak mempunyai perintah command line apapun dibawahnya, sebaliknya, ada 2 nama instruksi lain setelah tanda `:`. Dua instruksi inilah yang akan dijalankan oleh `make` saat mengeksekusi instruksi `default`.

Pada instruksi `clean`, tidak ada parameter instruksi lain, maka `make` akan langsung mengeksekusi perintah command-line-nya. Ingat, perintah command line selalu didahului dengan sebuah tab atau spasi jarak.

Oh lihat, `hello.o` mempunyai parameter instruksi (`clean`) dan perintah command line. `make` akan mengeksekusi instruksi `clean` lebih dahulu, baru kemudian perintah command-line dibawahnya.

Gampang kan?