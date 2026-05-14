# 🚗 SIPARKIR (Sistem Informasi Parkir)

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

SIPARKIR adalah aplikasi manajemen parkir berbasis Java Desktop (GUI Swing) yang mengimplementasikan konsep Pemrograman Berorientasi Objek (OOP). Proyek ini dibangun sebagai solusi digital untuk manajemen pemesanan area parkir, pelaporan kendala, serta manajemen data pengguna.

---

## 📸 Fitur Utama

- **Autentikasi Pengguna**: Sistem Login dan Registrasi yang aman.
- **Manajemen Pemesanan (Booking)**: Pengguna dapat memesan slot parkir berdasarkan pelat nomor dan tipe kendaraan.
- **Riwayat & Status Pesanan**: Menampilkan daftar pesanan parkir yang sedang aktif.
- **Sistem Pelaporan**: Fitur untuk melaporkan kendala kendaraan di area parkir beserta kronologinya.
- **Reset Password via Email (Local Server)**: Mendukung pengiriman tautan reset password melalui mini HTTP server yang dibangun di dalam aplikasi.

---

## 🛠️ Teknologi & Tools

- **Bahasa**: Java (JDK 11+)
- **GUI Framework**: Java Swing & AWT
- **Database**: SQLite (via JDBC)
- **Email Service**: Jakarta Mail API & **MailSlurper (via Docker)**
- **Konsep Unggulan**: *Encapsulation, Inheritance, Polymorphism, Local HTTP Server Handling*.

---

## 🚀 Cara Menjalankan Aplikasi

Aplikasi ini sudah dilengkapi dengan script otomatis untuk mempermudah proses kompilasi dan eksekusi di sistem operasi Windows.

### Prasyarat
- Komputer Anda sudah terinstall **Java Development Kit (JDK)** versi 11 atau lebih baru dan sudah ditambahkan ke dalam *Environment Variables (PATH)*.
- (Opsional) Terinstall **Docker Desktop** jika ingin menggunakan fitur *Mail Testing*.

### Langkah-langkah

1. **Clone Repository ini**
   ```bash
   git clone https://github.com/redoomp4/TUBES2025.git
   cd TUBES2025
   ```

2. **Jalankan Aplikasi Utama (GUI)**
   Cukup klik dua kali (double-click) pada file `run.bat` dari File Explorer Windows, atau jalankan perintah berikut di terminal:
   ```cmd
   run.bat
   ```

3. **Jalankan Server Reset Password (Opsional)**
   Jika Anda ingin menguji fitur lupa password (yang mengirim tautan ke localhost), jalankan server lokalnya dengan mengklik dua kali `run_server.bat` atau via terminal:
   ```cmd
   run_server.bat
   ```

4. **Jalankan MailSlurper ( butuh Docker )**
   Jika Anda ingin melihat email yang dikirim oleh sistem saat fitur lupa password digunakan, jalankan *MailSlurper* menggunakan Docker Compose:
   ```cmd
   docker-compose up -d
   ```
   Setelah itu, buka browser dan akses `http://localhost:8080` untuk melihat kotak masuk (inbox) lokal Anda.

---

## 📂 Struktur Direktori

```text
SIPARKIR/
├── database/            # File database SQLite (App.db)
├── image/               # Aset gambar, ikon, dan background UI
├── lib/                 # Dependencies (.jar) seperti SQLite JDBC & Jakarta Mail
├── src/                 # Kode sumber Java (.java) dan HTML
├── run.bat              # Script otomatis untuk build & run aplikasi
├── run_server.bat       # Script otomatis untuk build & run server password
└── README.md            # Dokumentasi proyek
```

---

## 🎯 Tujuan Pembelajaran
Proyek ini dibuat untuk memenuhi tugas mata kuliah Pemrograman Berorientasi Objek (PBO), dengan capaian:
- Menguasai implementasi OOP secara langsung pada aplikasi nyata.
- Memahami integrasi aplikasi Desktop dengan Relational Database (SQLite).
- Membangun antarmuka interaktif menggunakan event-driven programming (Java Swing).
- Mengelola dependensi eksternal (Library) tanpa menggunakan Build Tool (seperti Maven/Gradle) untuk pemahaman fundamental struktur direktori Java.

---

