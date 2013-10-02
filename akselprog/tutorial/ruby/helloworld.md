---
title: Tutorial Ruby
subtitle: Ohayou Ruby!
parentpage: index.html
layout: page
---

Ohayougozaimas (おはようございます) artinya Selamat Pagi dalam bahasa Jepang.

Anda tidak perlu mengkompile program Ruby, karena Ruby bersifat interpreted. Anda tinggal buat file baru dengan ekstensi `.rb`. Lalu ketik ulang skrip dibawah ini:

{% highlight ruby %}
puts "Ohayou, Ruby!"
print "Siapa nama anda? "
name = gets.chomp
puts "Hallo, " + name + "! Senang berkenalan dengan anda!"
puts "Hallo, #{name}! Senang berkenalan dengan anda!"
puts name * 3
puts name.reverse
puts name.upcase
puts 11.even?
puts 12.09430.floor
{% endhighlight %}

Setelah itu, simpan dengan nama `helloworld.rb`, lalu jalankan dengan perintah `ruby helloworld.rb` di command-line. Anda boleh menamainya dengan nama selain `helloworld`. Skrip tadi akan diinterpresikan:

{% highlight text %}
Ohayou, Ruby!
Siapa nama anda? Alvina
Hallo, Alvina! Senang berkenalan dengan anda!
Hallo, Alvina! Senang berkenalan dengan anda!
AlvinaAlvinaAlvina
anivlA
ALVINA
false
12
{% endhighlight %}

Dalam contoh diatas, saya mengisi input dengan `Alvina`, silakan isi input itu sesuai keinginan anda.

`puts "Ohayou, Ruby" ` akan mem-print `Ohayou, Ruby` ditambah dengan tanda akhir baris pada standard output (STDOUT).

`print "Siapa nama anda"` juga mem-print sebuah string ke standard output, tapi tanpa tanda akhir baris.

`name = gets.chomp` kebalikan dari output, `gets` adalah metode dari standard input (STDIN), dalam hal ini, `gets` mendapatkan input dari user. Sedangkan `chomp` adalah metode dari objek `String` yang akan membuang semua record separator (misalnya `\n` atau `\r`).

Di Ruby, semua adalah objek, mulai dari variable, tipe objek, fungsi ato metode, class, dan sebagainya. 

Bentuk `x.y` akan sangat umum dijumpai dalam Ruby, dimana `x` adalah objek dan `y` adalah metode dari objek. Contoh `name.reverse`, angka `name` adalah objek dari `String`. `name.reverse` sendiri akan menghasilkan kebalikan string dari variable `name`. Kalo misal name itu nilainya "Alvina", maka `name.reverse` menghasilkan nilai berupa string: `anivlA`.

Oh iya, metode di Ruby tidak hanya ASCII aja, bahkan tanda `?`,`!`,`=`,`+`,dll bisa digunakan loh. Contohnya lihat `11.even?`. `.even?` adalah metode dari Integer untuk mengecek apakah objek merupakan bilangan genap, jika benar akan menghasilkan `true`.

`"Hallo, #{nama}"` : Kita dapat memasukkan variable atau bahkan sebuah fungsi ato lambda ke dalam string dengan cara mengkapsulasinya dengan `#{` dan `}`.