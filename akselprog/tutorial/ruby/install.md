---
layout: page
title: Tutorial Ruby
subtitle: Menginstall Ruby
parentpage: index.html
---
## Linux dan Mac OS X

Anda bisa menginstall Ruby di sistem linux dengan `sudo apt-get install ruby` tapi untuk sistem Linux dan Mac OS X, saya sarankan menginstallnya dengan [RVM atau Ruby Version Manager](https://rvm.io/). RVM dapat diunduh dan diinstall secara otomatis dengan perintah: `\curl -L https://get.rvm.io | bash` di command-line. Atau tambahkan `sudo` sebelum perintah tersebut jika anda ingin menginstall RVM secara *system-wide* (bisa digunakan semua *user* dalam komputer).

Tutup terminal window, lalu buka lagi session terminal baru, lalu ketik: `source ~/.rvm/scripts/rvm`. Setelah itu coba ketikkan: `type rvm | head -n 1`, jika perintah itu menghasilkan: `rvm is a function`, maka installasi anda telah sukses dan anda bisa menggunakan perintah `rvm` sekarang. 

Sebelum kita beranjak lebih jauh, mari install dependensi dari Ruby untuk sistem komputer anda dengan mengetikkan `rvm requirements`, RVM akan menginstall semua program yang dibutuhkan oleh Ruby dan mungkin membutuhkan password untuk `sudo`.

Nah, untuk menginstall Ruby, ketikkan perintah: `rvm list known` untuk daftar berbagai macam implementasi dari Ruby (MRI (original), JRUBY (Java),IronRuby (.Net), dll) dan versinya. Ketikkan `rvm install 2.0.0` untuk menginstall MRI Ruby versi 2.0.0 ke patch paling terakhir. RVM akan mencari versi compiled-nya terlebih dahulu, jika tidak ada, RVM akan mendownload source code Ruby dan mengkompilenya untuk anda.

Jika sudah selesai, ketik `ruby -v` dan `gem -v`. Jika keduanya menampilkan masing-masing versi dari Ruby dan Rubygem, maka installasi Ruby telah berhasil dilakukan. 

**Tambahan**: Dengan RVM anda kini juga bisa menginstall Ruby 1.9.3 atau sebelumnya atau bahkan Implementasi Ruby yang lain dengan cara `rvm install 1.9.3` atau `rvm install jruby` misalnya. Dan kita bisa dengan mudah, bolak-balik dari versi 2.0.0 ke versi 1.9.3 dengan perintah `rvm use 1.9.3`. Untuk melihat semua Ruby yang terinstall, ketikkan `rvm list`.

## Windows

Untuk system Windows, anda bisa menginstall Ruby dengan menggunakan [Ruby Installer](http://rubyinstaller.org/).