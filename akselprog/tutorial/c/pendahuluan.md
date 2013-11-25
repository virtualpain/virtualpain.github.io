---
layout: page
title: Bahasa Pemprograman C
subtitle: Pendahuluan
parentpage: index.html
---

C adalah bahasa programming multi-purpose (serbaguna), high-level (lebih mudah dibaca manusia) dan terkompilasi (kode sumbernya harus di-*compile* dahulu).

C diciptakan pada awalnya untuk membangun UNIX, sistem operasi terkenal sebelum Linux, Mac (bisa dibilang Linux dan Mac adalah turunan, walau tidak secara langsung, dari UNIX karena kemiripannya) dan Windows.

## Persiapan

C adalah bahasa programming yang dikompilasi, kode C yang akan diubah menjadi instruksi ("bahasa" yang dikenal komputer, berupa kode binari) komputer dengan menggunakan compiler. Dalam tutorial ini kita menggunakan compiler-nya GNU yakni GCC. Untuk menginstallnya:

### Linux

Cukup dengan perintah `sudo apt-get install build-essentials` di distribusi berbasis Debian (Ubuntu,Mint,BlankOn,dsb).

### Mac OS X

Menginstall GCC dapat dilakukan setelah mendownload XCode. __FIXME__

### Windows

GCC tersedia dalam MinGW. __TODO__

## Cara Mengkompilasi

Simpan kode berikut ini dengan nama `halodunia.c` dengan menggunakan [*code editor*](/akselprog/tutorial/editor) favorit anda.

{% highlight c %}
#include <stdio.h>
int main(){
    printf("Halo Dunia!\n");
    return 0;
}
{% endhighlight %}

Buka command-line anda dan masuk ke direktori dimana file `halodunia.c` berada! ([Nggak ngerti command line/terminal?](/akselprog/tutorial/commandline)). Lalu ketikkan `gcc halodunia.c -o halodunia`.