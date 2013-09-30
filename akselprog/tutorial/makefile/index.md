---
title: "Tutorial: Makefile"
layout: page
---
**Catatan**: Tutorial ini menggunakan implementasi GNUMakefile

**Lainnya**: [Menginstall Makefile](/tutorial/makefile/install.html) | [Rakefile](/tutorial/rakefile/ "Makefile menggunakan Ruby")

Sebelum mengetahui tentang Makefile, anda paling tidak harus paham tentang dasar-dasar command line (terutama Linux). 

**Makefile** adalah sebuah file berisi satu atau beberapa instruksi dimana tiap
instruksi berisi perintah-perintah command-line untuk melakukan sebuah tugas besar
(misal: mengkompilasi sebuah kode sumber) secara otomatis cukup dengan perintah `make`.

**File Makefile**: Program `make` sendiri secara *default* akan mencari file `Makefile` yang ada di dalam directory saat ini.
Jika anda menggunakan nama file selain `Makefile`, tambahkan argumen `-f namafile` pada perintah `make`,
jadi kita melakukannya dengan `make -f mymakefile`.

**Penulisan Makefile** cukup mudah, terdiri dari name instruksi yang berisi perintah-perintah command-line. Contoh:

    default: 
        rm -rf build/*
        g++ -Wall src/main.cpp -o build/helloworld

Dalam contoh diatas, ada 1 instruksi bernama `default` yang berisi 2 perintah command line `rm` dan `g++`.

