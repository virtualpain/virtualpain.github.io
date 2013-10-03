---
layout: page
title: Tutorial Ruby
subtitle: Operator dan Tipe Data
parentpage: index.html
---

{% highlight ruby %}
# tipe data
i = 5 #integer, fixnum
s = "Hallo Ruby!" 
s2 = %q{Hallo Dunia!!} #=> bentuk lain penulisan string
d = 3.14
n,m = [19 , 28]
puts i.class
puts s.class
puts d.class
puts "n=#{n}; m = #{m}"
n = m = 10
{% endhighlight%}

Semua tipe data di Ruby merupakan objek yang diturunkan dari sebuah `class`. Dan semua objek bisa dimanipulasi.

*Variable Assignment* bisa dilakukan juga dengan menggunakan satu atau lebih variable. Dari contoh ini, `n,m = [19 , 28]`, variable `n` akan bernilai integer 19 dan `m` bernilai 28.

`n = m = 10` menghasilkan dua variable: `n` dan `m` yang sama-sama bernilai `10`.

Untuk mengecek tipe data atau class dari sebuah objek, gunakan metode: `objek.class`. Misalnya `d.class` di atas akan menghasilkan `Float`.

{% highlight ruby %}
# nilai spesial
n = nil
t = true
f = false
{% endhighlight%}

Di Ruby, `null` ditulis dengan `nil`, dan nil sendiri masih berupa objek (NilClass).

{% highlight ruby %}
# aritmatika
puts 5 * 5 + ((30 - 2) / 4)
puts 30 % 2
{% endhighlight%}

Operator aritmatika di Ruby tidak berbeda dari bahasa programming lainnya. Hanya saja, operator Aritmatika di Ruby sebenarnya adalah sebuah metode / fungsi dari sebuah objek, misalkan `5 * 5` itu sebenarnya `5.*(5)` dimana tanda `*` adalah nama fungsi dari perkalian. Bleh!

## Macam-macam Variabel

{% highlight ruby %}
ki = 9999 # local variable
@myinstance = Object.new
@@my_class_variable = nil
PI = 3.14
s = :simbol
{% endhighlight%}

Local variable, adalah variable yang berada dalam cakupan lokal, entah itu fungsi, block, main.

Instance variable adalah __TODO__

Class Variable adalah variable yang digunakan di dalam sebuah class. Bisa diakses dari luar class dengan syarat tertentu. Variable ini bisa diakses oleh semua metode dalam sebuah class. __CHECK__

Constant (dan nama Class) harus diawali dengan huruf besar atau kapital. Constant bisa dianggap sebagai global variable.

Dan sebuah fitur dalam Ruby, yaitu `symbol`, syntaksnya cukup dengan tanda titik dua diikuti dengan nama simbol. Symbol tidak sama dengan string. Bisa dibilang, symbol itu gabungan antara nama variable dan nilainya.

## Perbandingan 

{% highlight ruby%}
# #=> = hasil

# persamaan
1 == 1 #=> true
1 == 2 #=> false
# pertidaksamaan
1 != 2 #=> true
1 != 1 #=> false

# perbandingan
1 < 5 #=> true
1 > 5 #=> false
1 <= 2 #=> true
1 >= 2 #=> false
{% endhighlight %}