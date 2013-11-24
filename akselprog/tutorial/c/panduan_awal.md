---
layout: page
title: Bahasa Pemprograman C
subtitle: Panduan Awal
parentpage: index.html
---

## Halo Dunia

Buat file berikut ini dengan nama `hello.c`:

{% highlight c %}
#include <stdio.h>
/* Akan menghasilkan "Halo Dunia!" */
int main(){
    printf("Halo Dunia!\n");
    return 0;
}
{% endhighlight %}

Lalu buka command line dan ketikkan perintah berikut untuk mengkompilasinya: `gcc hello.c`. Kompiler akan menghasilkan sebuah file baru di direktori yang sama dengan nama `a.out`. Jalankan program itu dengan perintah `./a.out`. Program itu akan menghasilkan `Halo Dunia!`.

### `#include <stdio.h>`

`#xxxx` adalah compiler *directive* yang dieksekusi lebih dahulu sebelum kode kita dievaluasi.

`#include <stdio.h>` adalah kode untuk memasukkan informasi, dalam hal ini adalah standard library dari C berupa `stdio` yang berisi segala informasi tentang standard input dan output.

### `/* Akan menghasilkan "Halo Dunia!" */`

Kode yang ada diantara tanda  `/*` dan `*/` tidak akan dievaluasi. Ini disebut Komentar. Biasanya komentar digunakan untuk memberikan definisi, instruksi, atau komentar tentang program atau fungsi untuk programmer, baik diri sendiri atau programmer lain.

### `int main(){}`

Semua program C di jalankan dari fungsi bernama `main`. Setiap fungsi `main` mempunyai data tipe `int` yang artinya selalu menghasilkan integer jika program seleseai dijalankan. Lebih lengkap tentang fungsi akan dijelaskan nanti. Fungsi main mempunyai return type `int`, makanya kita taruh `return 0;` di paling akhir dari blok fungsi `main()`.

### `printf("Hallo Dunia!\n");`

Sebuah statement dari program ini yang akan memprint kalimat `Halo Dunia!`. Setiap statemen selalu diakhiri dengan tanda `;`, yakni tanda untuk compiler bahwa statement ini telah berakhir disini.

`printf()` adalah fungsi untuk memprint string ke Standard output. Fungsi ini bisa kita gunakan karena kita meng-*include* `stdio.h` tadi.

`Halo Dunia\n`, tanda `\n` adalah format spesial yang akan interpresikan sebagai baris baru.