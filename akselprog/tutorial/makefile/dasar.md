---
title: "Tutorial Make"
subtitle: "Dasar-dasar Makefile"
parentpage: index.html
layout: page
---
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

***Apa itu Make?***: Make adalah program yang berisi *target*, tiap *target* berisi perintah command-line atau bisa disebut *resep*. Dalam contoh diatas `default`, `hello.o` dan `compile` adalah nama dari *target*. Sedangkan `gcc -c main.cpp -o build/hello.o` adalah perintah command line yang akan di otomatisasi.

Contoh Makefile diatas adalah: otomatisasi pekerjaan untuk: menghapus file executable dan mengkompilasi kode sumber. Kegunaaan makefile banyak sekali, nggak cuma buat programming, bahkan bisa untuk pekerjaan sehari-hari loh. Misalnya mengatur file foto, mempersiapkan file-file kosong untuk keperluan template, dan lain-lain.

***Kenapa (menggunakan) Make?*** : Kode sumber dalam pemprograman kadang bisa menjadi sangat besar jumlahnya, dan mengkompilasi mereka satu-satu bukan main capeknya, makanya Makefile membantu developer untuk mengotomatisasikan pekerjaan mereka dengan instruksi-instruksi misalnya untuk membersihkan seluruh file objek .o dari sebuah direktori, mengkopi file hasil kompilasi ke directory /usr/local/bin misalnya.

***Bagaimana cara menggunakannya?*** : Di command-line, masuk ke directory dimana Makefile berada, kemudian ketik `make` di command-line. Program `make` ini akan mencari file `GNUMakefile` atau `Makefile`, pada umumnya `Makefile` lebih banyak digunakan sebagai standard nama filenya. Lalu `make` akan mencari *target* `default`.

### Perintah

`make -f filename` : Jika kita mempunyai file Makefile dengan nama yang tidak lazim, buat program `make` mengerti apa nama file makefile yang anda gunakan dengan perintah, contoh: `make -f makefilegue`. Berdasarkan standar dan *readibilitas*, selalu gunakan nama `Makefile`!

`make target` : bisa digunakan jika kita ingin langsung mengeksekusi *target* tertentu, misalnya saya ingin mengeksekusi *target* `install` dari contoh diatas. Maka saya tinggal menuliskan perintah: `make install`.

### Detail Format Penulisan

{% highlight makefile %}
target: target2 syarat2
    resep1
    resep2
    ...
target2: syarat
    resep
    ...
{% endhighlight %}

*Target* adalah sebuah instruksi berisi kumpulan perintah command-line. Sedangkan *syarat* adalah persyaratan, program make akan mendahulukan *syarat* ini terlebih dahulu baru kemudian menjalankan *resep*.

*Target* biasanya adalah nama file yang akan dihasilkan oleh *resep* atau nama *Phoney Target*, contoh dari skrip diatas adalah target `clean` dan `default`, keduanya target tersebut tidak menghasilkan sebuah file bernama `clean` atau `default`. Keduanya cuma sekedar "nama" dari tugas yang akan dikerjakan.