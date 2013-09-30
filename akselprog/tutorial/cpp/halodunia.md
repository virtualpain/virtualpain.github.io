---
layout: page
title: "Tutorial C++"
subtitle: "Halo Dunia!"
parentpage: "index.html"
---

Contoh kode C++ (main.cpp):
{% highlight cpp %}
#include <iostream>
int main()
{
    // ini adalah baris komentar
    std::cout << "Hallo Dunia!" << std::endl;

    return 0;
}
{% endhighlight %}

Untuk mengkompilenya, di linux dan mingw (saya tidak tahu di Mac, tapi saya rasa sama saja) anda perlu menuliskan perintah berikut di command line: `g++ main.cpp -o helloworld`. Setelah perintah dieksekusi, sebuah file *executable* baru bernama `helloworld` akan memunculkan tulisan `Hallo Dunia!`.  Pada command line akan terlihat kurang lebih seperti ini:

{% highlight text %}
$ g++ main.cpp -o helloworld
$ ./helloworld
Hallo Dunia!
$
{% endhighlight %}

`#include <iostream>`: C++ mempunyai beberapa standard library yang bisa kita "import" ke dalam kode. Dalam kode diatas, `iostream` adalah standard library yang dibutuhkan untuk stream input-output. Karena `iostream` adalah bagian dari standard library-nya C++, maka kita harus menambahkan `<` dan `>` diantara keduanya. Tapi jika kita meng-"import" kode kita sendiri, gunakan tanda petik ganda `"`. Misal `#include "planet.h"`.

`int main(){}`: `main` adalah fungsi utama dalam sebuah program C++ dan akan dipanggil lebih dahulu ketika program dijalankan. `int` adalah return type, atau hasil dari fungsi `main` adalah berupa *integer*.

`std::cout << "Hallo Dunia!" << std::endl;` merupakan sebuah statement. 

`std::` merupakan *namespace* dari standard library. Semua standard library menggunakan `std` sebagai namespacenya. Sedangkan tanda `::` merupakan scope operator.

`cout` dan `endl` adalah fungsi yang didefinisikan di `iostream`, jadi kalau kita menghapus `#include <iostream>`, kita tidak akan bisa menggunakan keduanya.

Yang terakhir `return 0;`, merupakan definisi hasil yang dihasilkan oleh fungsi `main`. Angka nol yang dihasilkan oleh program ini akan dibaca oleh sistem operasi sebagai "sukses", maksudnya tidak ada error. Angka selain nol akan dianggap operating system bahwa program ini error. Dalam debugger, angka selain 0 akan menyalakan peringatan.

## Lain-lain

`// komentar` merupakan komentar, segala tulisan setelah tanda `//` tidak akan dievaluasi oleh compiler. Sangat berguna untuk berbagi informasi dengan developer lain yang menggunakan source code anda.

`/*   komentar */` adalah komentar multibaris, sama seperti `//` segala tulisan diantara tanda `/*` dan `*/` termasuk baris baru tidak akan dievaluasi oleh kompiler. Contoh:

{% highlight c++ %}
// komentar satu baris
/*
ini adalah komentar multibaris, 
hey, lihat kode di bawah baris ini tidak akan dievaluasi!

int main(){}
*/
{% endhighlight %}