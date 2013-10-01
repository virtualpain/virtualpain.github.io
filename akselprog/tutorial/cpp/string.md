---
layout: page
title: Tutorial C++
subtitle: Manipulasi String
parentpage: index.html
---

String adalah kumpulan dari beberapa karakter. String selalu diapit dalam tanda petik ganda `""` sedangkan char atau karakter diapit dengan tanda petik tunggal atau biasa `''`. Contoh String: `"Aku adalah string"` sedangkan karakter hanya berisi 1 karakter, contoh `'a'`.

Skrip nomor 2 (stringmanipulation.cpp):

{% highlight cpp %}
#include <iostream>
#include <string>

using std::string;
using std::cout;
using std::cin;
using std::endl;

int main(){
    string nama;
    cout << "Siapa nama anda? "; // tanpa endl
    cin >> nama;
    cout << "Hallo, " << nama << endl;
    cout << "Nama anda berisi " << nama.size() << " karakter" << endl;
    return 0;
}
{% endhighlight %}

Compile kode diatas dengan nama output `stringmanipulation`. Lalu coba eksekusi. Kurang lebih hasilnya pada layar command line:

{% highlight text %}
$ ./stringmanipulation
Siapa nama anda? vina
Hallo, vina
Nama anda berisi 4 karakter
{% endhighlight %}

## Detail

`#include <string>` : kita mengimplementasikan header string yang mendefinisikan type string.

`using std::string`, `using std:cout`, `using std::cin`, `using std::endl` : Keyword `using std::string` maksudnya kita bisa menggunakan `string` dalam namespace saat ini tanpa harus menambahkan `std::`.

`string nama;` deklarasi variable bertype string dengan nama variable `nama`. String tidak boleh lebih dari satu baris, contoh: 

{% highlight text %}
string goodMovie = "Ada Apa dengan Si PlusPlus?";  // benar
string badMovie = "Petualangan Si PlusPlus
di Rimba Amazom"; // salah, karena melebihi satu baris
{% endhighlight %}

`cout << "Siapa nama anda? ";` akan dievaluasi dengan menuliskan `"Siapa nama anda?"` ke standard output stream.

`cin >> nama;` kebalikan dari `cout`, `cin` menggunakan tanda `>>` untuk membaca input stream. Dengan ini kita bisa menambahkan input dari pengguna.

` cout << "Hallo, " << nama << endl;` : `endl` singkatan dari *endline*, jika `endl` dievaluasi, dia akan menjadi penutup dari sebuah baris. Artinya, jika ada `cout` atau `cin` setelah ini, mereka akan ditampilkan di baris baru.

## Lain-lain

`objek.metode()` : adalah salah satu bentuk ekspresi. metode adalah bagian dari objek yang akan mengevaluasi nilai objek.

`nama.size()` : cara untuk mendapatkan jumlah karakter dalam sebuah string.

`char` : tipe data yang berisi satu karakter, contoh `char karakter = 'x'`

`wchar_t` : tipe data yang dapat berisi *wide character*, umumnya non ASCII seperti teks huruf Asia seperti Kanji, dll.

`string name(n,str)` : deklarasi string, yang menghasilkan variable `name` dengan isi `str` dikali jumlah `n`. Contoh: 

{% highlight text %}
std::string love(2,"I love you ")
std::cout << love; 
{% endhighlight %}

menghasilkan:

{% highlight text %}
I love you I love you
{% endhighlight %}