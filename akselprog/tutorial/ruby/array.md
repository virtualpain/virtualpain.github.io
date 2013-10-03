---
title: Tutorial Ruby
subtitle: Array dan Hash!
parentpage: index.html
layout: page
---

{% highlight ruby %}
m = ['a','Hallo Dunia',42,true,nil,3.14]
# bentuk lain penulisan array, tiap elemen dari array dipisahkan oleh spasi
n = %w{hallo dunia} #=> ["hallo","dunia"]
n.size #=> 2
n[0] #=> "hallo"
n.first #=> "hallo"
m.last #=> 3.14

# hash
hh = {"hallo" => "Hallo Dunia", :negara => "Indonesia", jumlah_propinsi: 34}
hh.size #=> 3
hh[:jumlah_propinsi] #=> 34
hh["hallo"] => "Hallo Dunia"
{% endhighlight %}

Array adalah kumpulan dari beberapa elemen array yang berupa objek/variabel. Array selalu berurutan dan dimulai dari nol `0`. Penulisannya dikelilingin dengan *square braces* `[` dan `]`. Masing-masing elemen dipisahkan oleh tanda koma `,`.

Array bisa juga ditulis dengan format `%w{nilai1 nilai2 ...}`, tiap-tiap nilai dipisahkan oleh spasi.

Hash mirip dengan array, hanya saja, tiap-tiap elemen mempunyai index dan tidak perlu berurutan dan hash dikelilingi oleh tanda *curly braces* `{` dan `}`. 

Index hash bisa menggunakan angka, string, symbol dan antara index dan value dipisah oleh tanda `=>`. Untuk symbol, bisa juga ditulis seperti ini: `namasymbol: value`, yakni meletakkan tanda titik dua setelah nama symbol.

Dokumentasi: [Enumerable](/akselprog/api/ruby/Enumerable.html) (dasar dari Array dan Hash), [Array](/akselprog/api/ruby/Array.html), [Hash](/akselprog/api/ruby/Hash.html)

## Array Tingkat lanjut

{% highlight ruby %}
m = ['a','Hallo Dunia',42,true,nil,3.14]
m[-1] #=> 3.14
m[2,4] #=> [42,true,nil]
m[1..3] #=> ["Hallo Dunia",42,true]
m = m + [6] #=> ['a','Hallo Dunia',42,true,nil,3.14,6]
m << "Starbucks" #=> ['a','Hallo Dunia',42,true,nil,3.14,6,"Starbucks"]
m << ["Donat", "Pizza"] #=> ['a','Hallo Dunia',42,true,nil,3.14,6,"Starbucks",["Donat","Pizza"]]
{% endhighlight %}

`m[-1]` memanggil array dengan index berupa angka minus akan dihitung dari belakang.

`m[2,4]` menghasilkan (return) array baru dengan nilai` m[2]`,`m[3]`, dan `m[4]`. Atau gampangnya semua nilai mulai dari index 2 hingga 4.

`m[1..3]` sama seperti diatas, hanya saja menggunakan range. Artinya menghasilkan array berisi array m mulai dari index 1 hingga index 3.

`m + [6]` cara menambahkan sebuah elemen array. Nilai yang ditambahkan harus berupa array. Dalam contoh ini nilai yang ditambahkan adalah array berisi satu elemen berupa integer 6.

`m << "Starbucks"` cara lain menambahkan array, nilai yang ditambahkan bukan merupakan array. Jika yang ditambahkan adalah array/hash, maka array itulah yang akan menjadi elemen.