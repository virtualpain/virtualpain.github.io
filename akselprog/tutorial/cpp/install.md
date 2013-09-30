---
layout: page
title: "Tutorial C++"
subtitle: "Install Editor dan Compiler"
parentpage: "index.html"
---

Untuk membuat sebuah program menggunakan C++, anda membutuhkan *compiler* dan code editor. 

## Editor

***Code Editor***: Untuk code editor, anda bisa menggunakan [Notepad++](http://www.notepad-plus-plus.org/) di Windows, gEdit (GNOME) atau Kate (KDE) di linux, dan [Xcode](https://developer.apple.com/technologies/tools/) di Mac OS X. Jika dikomputer anda telah terinstall Java, anda bisa menggunakan [Jedit](http://www.jedit.org/). 

Anda bisa menggunakan IDE (Integerated Development Environment) seperti [Netbeans](http://netbeans.org/), [Eclipse](http://www.eclipse.org/), atau [Codeblocks](http://www.codeblocks.org/), tapi alangkah baiknya jika anda memulai dasar-dasar C++ dengan manual menggunakan command line dan text editor.

## Compiler

Setiap kode sumber C++ akan dikompilasi menjadi bahasa mesin berupa file object. Untuk mengkompilasi kode sumber ini, kita membutuhkan *compiler* yang berbeda di tiap sistem operasi.

### Linux

Untuk distribusi Ubuntu, anda bisa menginstall dengan perintah `sudo apt-get install build-essential`. *build-essential* hanya sebuah nama meta-package yang berisi beberapa program seperti compiler, debugger, makefile, header, dan lain-lain.

### Mac OS X

Compiler C++ di Mac OS X sudah termasuk dalam Xcode. 

### Windows

Untuk windows, anda bisa mendownload [Visual C++](http://msdn2.microsoft.com/en-us/visualc/default.aspx) atau menginstall [MinGW](http://mingw.org/), saya menyarankan menggunakan MinGW karena program ini berisi berbagai macam program seperti yang ada di Linux.