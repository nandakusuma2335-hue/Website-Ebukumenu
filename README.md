# E-Buku Menu - QR Code Menu System

## Deskripsi Project

E-Buku Menu adalah aplikasi berbasis web yang digunakan untuk menampilkan daftar menu makanan dan minuman secara digital menggunakan QR Code. Sistem ini memungkinkan pelanggan untuk melihat menu hanya dengan melakukan scan QR Code tanpa perlu menggunakan buku menu fisik.

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

Username: Nankus
Password: 123456

Username: sugik
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

## Author

Nama : I Kadek Nanda Kusuma
Project : E-Buku Menu QR Code System
