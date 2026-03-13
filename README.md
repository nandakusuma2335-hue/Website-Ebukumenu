# Menu - QR Code Menu System Tantri Resto

## Deskripsi Project

 Menu Tantri Resto adalah aplikasi berbasis web yang digunakan untuk menampilkan daftar menu makanan dan minuman secara digital menggunakan QR Code. Sistem ini memungkinkan pelanggan untuk melihat menu hanya dengan melakukan scan QR Code tanpa perlu menggunakan buku menu fisik.

Selain itu, sistem ini menyediakan halaman admin yang memungkinkan pengelola untuk mengatur data produk, extra menu, QR Code, dan data pengguna secara mudah melalui panel admin.

Project ini dibuat sebagai implementasi pembelajaran pemrograman web dengan menggunakan konsep Object Oriented Programming (OOP) pada bahasa PHP serta menggunakan database MySQL untuk penyimpanan data.

---

## Fitur Sistem

### Fitur Customer

* Scan QR Code untuk membuka halaman menu
* Melihat daftar produk makanan dan minuman
* Melihat extra menu tambahan
* Melihat detail produk

### Fitur Admin

* Login ke sistem admin
* Mengelola data produk (Tambah, Edit, Hapus)
* Mengelola data user
* Mengelola QR Code
* Mengelola extra menu
* Upload gambar produk

---

## Teknologi yang Digunakan

* PHP (Object Oriented Programming)
* MySQL Database
* HTML & CSS
* Font Awesome (External Library)
* XAMPP sebagai Local Server

---

## Struktur Project

```
ebukumenu
│
├── admin
│   ├── index.php
│   ├── produk.php
│   ├── produk_add.php
│   ├── produk_edit.php
│   ├── users.php
│   └── qrcode.php
│
├── app
│   ├── interfaces
│   │   └── CrudInterface.php
│   ├── models
│   │   ├── BaseModel.php
│   │   └── Produk.php
│   └── services
│       └── ProdukService.php
│
├── assets
├── uploads
├── vendor
│
├── database.php
├── index.php
├── login.php
└── detail.php
```

---

## Database

Project ini menggunakan database MySQL dengan nama:

```
e_buku_menu
```

Tabel utama yang digunakan dalam sistem ini antara lain:

* users
* produk
* extra_menu
* qrcode

Database digunakan untuk menyimpan seluruh data yang berkaitan dengan sistem seperti data produk, data user, data QR Code, dan data extra menu.

---

## Cara Menjalankan Project

1. Install XAMPP
2. Jalankan Apache dan MySQL
3. Salin folder project ke dalam folder `htdocs`
4. Import database `e_buku_menu` ke phpMyAdmin
5. Akses project melalui browser:

```
Pelanggan:
http://localhost/ebukumenu

Admin:
http://localhost/ebukumenu/login.php
```

---

## Login Sistem
sistem memiliki dua akun admin yang dapat digunakan untuk login:

Username: Nankus <br>
Password: 123456

Username: sugik<br>
Password: 123456

---

## Tujuan Project

Project ini dibuat sebagai tugas implementasi pemrograman web yang menerapkan beberapa konsep penting dalam pengembangan perangkat lunak, yaitu:

* Object Oriented Programming (OOP)
* CRUD (Create, Read, Update, Delete)
* Penggunaan database MySQL
* Pembuatan interface web untuk pengguna dan admin
* Penggunaan library eksternal
* Penerapan namespace dan interface dalam pemrograman PHP

---
## Konsep Pemrograman yang Digunakan

Project Menu QR Code System Tantri Resto ini dikembangkan dengan menerapkan beberapa konsep pemrograman dalam pengembangan perangkat lunak, yaitu:

### 1. Object Oriented Programming (OOP)

Sistem ini menggunakan konsep OOP pada bahasa PHP untuk membuat struktur program yang lebih terorganisir dan mudah dikembangkan. Beberapa konsep OOP yang digunakan antara lain:

* **Class dan Object**
  Digunakan untuk merepresentasikan entitas dalam sistem seperti produk.

* **Inheritance**
  Class turunan dibuat dari class dasar untuk mewarisi fungsi dan properti yang sama.

* **Polymorphism**
  Method dapat digunakan kembali dengan implementasi yang berbeda.

* **Interface**
  Digunakan untuk mendefinisikan method yang harus diimplementasikan oleh class tertentu, contohnya pada `CrudInterface.php`.

---

### 2. CRUD (Create, Read, Update, Delete)

Sistem ini menerapkan operasi CRUD untuk mengelola data dalam database, seperti:

* Menambah data produk
* Menampilkan data produk
* Mengubah data produk
* Menghapus data produk

---

### 3. Database Management

Sistem menggunakan database MySQL untuk menyimpan dan mengelola data seperti:

* Data user
* Data produk
* Data QR Code
* Data extra menu

Koneksi antara aplikasi PHP dan database dilakukan menggunakan fungsi `mysqli`.

---

### 4. Struktur Kontrol Program

Program menggunakan struktur kontrol dasar dalam pemrograman seperti:

* **Percabangan (if / else)** untuk menentukan kondisi tertentu dalam program
* **Perulangan (while / for)** untuk menampilkan data dari database secara berulang

---

### 5. Penggunaan Library Eksternal

Project ini memanfaatkan library eksternal untuk meningkatkan tampilan antarmuka pengguna, yaitu:

* **Font Awesome** untuk menampilkan ikon pada halaman admin.

---

### 6. Namespace dan Struktur Folder

Project disusun menggunakan struktur folder yang terorganisir serta menerapkan **namespace** untuk memisahkan bagian program seperti:

* `app/models`
* `app/services`
* `app/interfaces`

Hal ini bertujuan agar kode lebih modular dan mudah dikembangkan di masa depan.

---

## Dokumentasi Interface Menu Qr Code Sistem Tantri Resto

### Halaman Login Admin
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-11 152704.png>)

### Halaman Beranda Admin
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-13 111106.png>)

### Halaman User Admin
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-13 112426.png>)

### Halaman Tambah Users Admin
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-13 112444.png>)

### Halaman Edit Users Admin
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-13 112457.png>)

### Halaman Produk 
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-13 112732.png>)

### Halaman Tambah Produk
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-13 112741.png>)

### Halaman Edit Produk
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-13 112801.png>)

### Halaman QR Code
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-13 112943.png>)

### Halaman Tambah QR Code
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-13 112956.png>)

### Halaman Detail QR Code
![alt text](<assets/img/Dokumentasi/Screenshot 2026-03-13 113015.png>)





## Author

Nama : I Kadek Nanda Kusuma <br>
Project : Menu QR Code System Tantri Resto <br>
Skema Sertifikasi : Programmer
