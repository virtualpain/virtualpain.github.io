---
layout: page
title: "Dasar Programming"
---

Tutorial ini cocok untuk non-programmer yang ingin mengetahui lebih jauh tentang programming. Walaupun judulnya agak mengerikan untuk dibaca, saya akan coba menjelaskan semuanya dengan bahasa yang dipahami oleh orang awam.

* [Compiled VS Interpreter](#compiled_vs_intepreter)
* [Low dan High Level Programming](#low_dan_high_level_language)
* [Statement](#statement)
* [Variable](#variable)
* [Tipe Data](#tipe_data)
* [Aritmatika](#aritmatika)
* [Perbandingan](#perbandingan)
* [Alur Kontrol](#alur_kontrol)
* [Perulangan](#perulangan)
* [Fungsi](#fungsi)
* [Object Oriented Programming](#object_oriented_programming)
* [Class](#class)
* [Lebih Lanjut](#lebih_lanjut)

## Compiled VS Interpreter

Sebelum mempelajari bahasa pemprograman, anda musti tahu dasar-dasar komputer, apa itu command line, GUI, operating sistem, dan lain-lain. Tidak perlu mempelajarinya terlalu jauh, cukup mengenal definisinya.

Bahasa Programming itu ya sesuai namanya, sekedar bahasa. Bahasa ini memfasilitasi perbedaan manusia dan komputer, ingat, komputer cuma mengerti bentuk binari, kumpulan angka 0 dan 1, sesuai dasar-dasar elektronika. Karena komputer tidak mengerti bahasa manusia, maka perlu adanya compiler atau penterjemah bahasa manusia ke bahasa instruksi yang dikenal oleh komputer.

Lalu apa itu Compiled, Interpreted language?

### Compiled language
Compiled language adalah bahasa yang terkompilasi. Skrip bahasa yang dipahami manusia akan di-compile, yang menghasilkan sebuah file object yang dikenal komputer. Di Windows, biasanya ini adalah file berekstensi .exe. 

Keuntungan dari bahasa compiled adalah kecepatan eksekusi, karena file yang dihasilkan adalah file executable yang berisi instruksi dalam bahasa komputer langsung. 

Kelemahan: ribet, harus mengkompilasi ulang kode sumber di platform lain. Misalnya kita harus mengkompilasi kode sumber di sistem Windows jika kita ingin menggunakannya di windows.

Contoh: Visual Basic, C, C++, Java.

### Interpreted Language

Interpreted language adalah bahasa yang dieksekusi langsung tanpa dikompilasi. Skrip program akan dibaca oleh interpreter yang langsung di kompilasi dan dijalankan pada saat itu juga. 

Keuntungan dari bahasa interpreted adalah bahasa pemprograman menjadi lebih portable (bisa dieksekusi di berbagai platform tanpa harus di kompile sesuai dengan sistemnya). 

Kelemahannya adalah kecepatannya yang agak lambat.

Contoh: Python, Ruby, Javascript (Node.js)

__TRIVIA__

* Dulu, sebelum bahasa pemprograman semaju sekarang, ilmuwan komputer menggunakan bahasa Assembly untuk menginstruksikan komputer.
* Java tidak sepenuhnya bahasa yang terkompilasi. Kode java memang dicompile, namun hanya ke bytecode. Byte code ini bukan instruksi komputer, dan hanya bisa dijalankan oleh Java Virtual Machine. Makanya kita harus menginstall Java (Java Runtime Engine/JRE) sebelum menjalankan aplikasi Java.

## Low dan High Level Language

Bahasa pemprograman bisa dibagi lagi menjadi 3 level.

### Low Level Language

Low Level Language adalah bahasa pemprogramman yang mendukung fitur untuk mengatur hingga ke level hardware (memory) komputer. Contoh: C, C++, dan Golang.

### High Level Language

Tingkatan bahasa yang lebih tinggi, tidak ada fitur untuk berinteraksi dengan hardware secara langsung. Biasanya bahasa programming seperti ini punya lebih banyak fitur. Contoh: Java, Ruby, dan Python.

## Statement

Statement adalah sebuah ekspresi di dalam bahasa pemprogramman, bisa merupakan sebuah instruksi, deklarasi variable, atau lainnya.

Contohnya dalam C

{% highlight c %}
printf("Hello World\n");
{% endhighlight %}

Sebuah statement biasanya diakhiri dengan tanda `;` (contoh C,C++, PHP )atau akhir baris (contoh: Python, Ruby).

## Variable

Variable, seperti di dalam aljabar, adalah sebuah nama yang mendefinisikan sebuah nilai. Dalam programming, variable sangat penting karena mampu menyimpan informasi berupa data, object, atau bahkan memory address/pointer.

Tergantung apa bahasa programmingnya, variable kadang kala harus di deklarasikan tipe datanya sebelum bisa digunakan.

Contoh dalam C/C++

{% highlight c %}
int answerForEverything = 42;
{% endhighlight %}

Dalam contoh diatas, variable memiliki nama `answerForEverything` bertipe data `int` atau integer, dan memiliki nilai `42`.

### Immutable Variable

Variable yang nilainya tidak bisa diubah atau biasanya berupa nilai standard yang tidak perlu diubah. Biasanya disebut dengan konstanta (constant).

## Tipe Data

Komputer menyimpan variable tidak dengan cara yang sama, ada beberapa jenis tipe data berbeda.

### Integer

Integer adalah data berupa bilangan. Misalnya `1000` atau `2948`. Tipe yang mirip dengan integer adalah Fixnum, Bignum, long, short, dll. Semuanya integer, hanya _range_nya yang berbeda.

### Float dan Double

Float dan/atau Double adalah bilangan pecahan desimal. Contoh `3.14` (ingat, di barat, angka pecahan tidak menggunakan koma, melainkan tanda titik).

### Char

Char atau Character adalah tipe data yang menyimpan data simbol huruf dalam hexadesimal atau binari berisi 1 karakter huruf. Kumpulan dari beberapa char disebut String.

### Boolean

Boolean adalah tipe data yang hanya berisi `True` atau `False`. Diambil dari nama matematikawan bernama George Boole.

### Array

Bisa disebut dengan List, atau Vector. Adalah kumpulan dari beberapa nilai data. Pada bahasa programming tertentu, nilai-nilai dalam sebuah Array harus mempunyai data tipe yang sama. Biasanya deklarasi tipe array dibatasi dengan koma dan ditutup dengan _square bracket_. Contoh `[1,24,948,9394]`

## Aritmatika

Disini kita bicara tentang operasi aritmatik di dalam programming.

__Penjumlahan__ cukup dengan menggunakan tanda `+`, contoh: `x = 4 + 4`.

__Pengurangan__ menggunakan tanda `-`, contoh: `y = 98 - 130`.

__Perkalian__ menggunakan tanda `*` (asteriks atau shift+8 di keyboard). Contoh: `yen_rupiah = yen * 116`

__Pembagian__ menggunakan tanda `/`. Contoh: `potongan_kue = 100 / 8`

Ada satu lagi tanda unik yakni menggunakan `%` atau divisor. Ini mirip pembagian, hanya saja hasil yang ditampilkan adalah sisa angka yang tidak dapat dibagi. Contoh: `100 % 3` akan menghasilkan `1`.

## Perbandingan

Dalam programming, anda bisa membandingkan suatu keadaan dengan menggunakan operator pembandingan. Perbandingan akan menghasilkan nilai boolean (true atau false).

__Persamaan__, menggunakan tanda `==`. Akan menghasilkan TRUE jika kedua pernyataan sama-sama benar. Contoh `5 == 5` menghasilkan TRUE.

__Pertidaksamaan__, menggunakan tanda `!=`. Akan menghasilkan TRUE jika kedua pernyataan tidak sama. Contoh `5 != 10` menghasilkan TRUE, dan `5 != 5` menghasilkan FALSE.

__Lebih Besar__, menggunakan tanda `>`. Menghasilkan TRUE jika pernyataan pertama lebih besar dari pernyataan kedua. Contoh `10 > 5` menghasilkan TRUE, dan `5 > 10` menghasilkan FALSE.

__Lebih Kecil__, menggunakan tanda `<`. Menghasilkan TRUE jika pernyataan pertama lebih kecil dari pernyataan kedua. Contoh `5 < 10` menghasilkan TRUE, dan `10 < 5` menghasilkan FALSE.

Anda bisa menambahkan tanda sama dengan `=` setelah lebih kecil atau lebih besar. Contoh `1 <= 1` dan `1 <= 2` menghasilkan TRUE.

Dalam beberapa hal, `===` dan `!==` perlu dilakukan, ini untuk mengetes apakah kedua objek adalah sama (atau benar-benar tidak sama), bisa ditemui di Javascript dan Java.

## Alur Kontrol

Dalam programming, programmer bakal menemui kejadian dimana dia harus memberikan pilihan berdasarkan kondisi atau kriteria data (file, variabel, dll) yang ada.

### If (Jika Maka)

`if` adalah bentuk percabangan dalam programming dengan mengetes atau membandingkan suatu kondisi. Jika kondisi tersebut dipenuhi, maka statement di dalam bracket `if` akan dieksekusi.

Contoh dalam Python:

{% highlight python %}
if pi == 3.14:
    perfect_round = True 
{% endhighlight %}

Anda bisa membuat beberapa percabangan. Biasanya cukup menggunakan `else if` (C++,Ruby) atau `elsif` (Lua) atau `elif` (Python).

Contoh dalam Python:

{% highlight python %}
if nilaiUjian >= 70:
    remidi = True 
elif nilaiUjian < 70:
    remidi = False
{% endhighlight %}

Jika tidak ada nilai yang cocok, anda bisa menuliskannya dalam `else`. Contoh (Python):

{% highlight python %}
if nilaiUjian >= 70:
    remidi = True 
elif nilaiUjian < 70 && nilaiUjian >= 50:
    remidi = False
else:
    tidakNaikKelas = True
{% endhighlight %}

### Switch

Switch adalah bentuk lain dari `if else if` yang lebih sederhana. Yang dibandingkan bukanlah kondisi, melainkan nilai.

Contoh dalam PHP

{% highlight php %}
$mark = 3;
switch($nilai) {
    case 0:
        echo "Persiapan!";
        break;
    case 1:
        echo "Bersedia!";
        break;
    case 2:
        echo "Siap!";
        break;
    case 3:
        echo "Go!";
        break;
}
{% endhighlight %}

## Perulangan

Dalam programming, kadangkala kita harus melakukan beberapa pekerjaan yang sama beberapa kali atau bahkan seterusnya. Anda bisa menggunakan perulangan untuk melakukan hal ini.

Contoh kasus perulangan: Di dalam membuat game, inti code dari game adalah sebuah perulangan abadi, tugas yang diulang biasanya adalah untuk menampilkan grafis. 

### While

Perulangan paling mudah. **Kode akan dieksekusi selama kondisinya terus menghasilkan TRUE**.

Contoh dalam Ruby:

{% highlight ruby %}
angka = 1
while angka <= 5 do
    puts angka
    angka += 1
end
{% endhighlight %}

Contoh diatas akan menghasilkan:

{% highlight text %}
1
2
3
4
5
{% endhighlight %}

Komputer akan terus mengeksekusi kode di dalam bracket selama kondisi `angka <= 5` menghasilkan TRUE.

### Do While

Perulangan Do While adalah perulangan yang mirip dengan While, tapi kode yang akan diulang ditulis lebih dahulu dan kondisinya ada dibawahnya.

Do While akan mengeksekusi kode dalam bracket paling tidak satu kali, walaupun kondisinya tidak cocok.

Contoh dalam Javascript:

{% highlight js %}
var angka = 10;
do {
    console.log("Nomor "+angka);
    angka++;
}while (angka <= 5);
{% endhighlight %}

Hasilnya dalam console:

{% highlight text %}
Nomor 10
{% endhighlight %}

Contoh diatas, variable `angka` tidak cocok dengan kondisi perulangan `angka <= 5`, tapi komputer akan tetap mengeksekusi kode dalam square bracket satu kali.

### For

`For` adalah salah satu bentuk perulangan yang cukup membingungkan bagi pemula.

Formatnya seperti ini:

{% highlight text %}
for(inisialisasi ; kondisi; ekspresi terakhir){
    // kode yang diulang
}
{% endhighlight %}

Contoh penggunaan:

{% highlight text %}
for(var i = 1 ; i <= 5; i++){
    console.log("Nomor "+i);
}
{% endhighlight %}

__Inisialisasi__ adalah ekspresi awal yang biasanya berupa deklarasi variable. Variable yang di deklarasikan disini masih cuma bisa diakses dalam lingkup perulangan ini sendiri.

__Kondisi__, seperti dalam While, ini adalah kondisi dimana jika menghasilkan TRUE, loop akan terus dijalankan

__Ekspressi Terakhir (Final Expression)__ biasanya berupa incrementasi/penambahan atau pengurangan dari variable yang diinisialisasi tadi.

For Loop adalah fitur perulangan paling tua, sebelum while, do while diperkenalkan.

### For Each Loop

For Each loop terdapat dalam beberapa bahasa programming tertentu. Foreach mencacah suatu _collection_ seperti array atau hash/dict.

Contoh dalam PHP:

{% highlight php %}
$raport = ["adi"=>100,"bagus"=>98,"dudu"=>75]
foreach($raport as $nama => $nilai){
    echo "$nama mendapatkan nilai $nilai";
}
{% endhighlight %}

Menghasilkan:

{% highlight php %}
adi mendapatkan nilai 100
bagus mendapatkan nilai 98
dudu mendapatkan nilai 75
{% endhighlight %}

## Fungsi

Dalam programming, fungsi (function atau method) berguna untuk menyederhanakan kode daripada harus mengulang-ulang menulis kode yang sama.

Contoh dalam Javascript:

{% highlight js %}
var luas_balok1 = 12 * 12 * 12
var luas_balok2 = 14 * 14 * 14
console.log(luas_balok1);
console.log(luas_balok2);
{% endhighlight %}

Dengan fungsi, kita bisa menyederhanakan kode diatas:

{% highlight js %}
function balok(panjang_sisi){
    var luas = panjang_sisi ^ 3;
    console.log(luas);
    return luas;
}
var luas_balok1 = balok(12);
var luas_balok2 = balok(14);
{% endhighlight %}