# Tugas UI/UX Flutter — Instagram

## Identitas
- Nama: Muhammad Ryan Hidayat
- 2455201110012
- Pilihan: B (Instagram)

---

## Deskripsi Singkat
Project ini merupakan replikasi tampilan aplikasi Instagram menggunakan Flutter.

Fitur yang dibuat:
- Instagram Stories
- Home Feed
- Bottom Navigation Bar
- Feed postingan dengan foto sendiri

---

## Widget yang Digunakan

| Widget | Fungsi |
|---|---|
| Scaffold | Struktur utama halaman |
| AppBar | Header aplikasi |
| ListView | Menampilkan daftar postingan |
| CircleAvatar | Foto profil story |
| Image.asset | Menampilkan gambar |
| BottomNavigationBar | Navigasi bawah |
| VideoPlayer | Memutar video story |
| Padding | Mengatur jarak |
| Row & Column | Mengatur layout |

---

## Screenshot

![Hasil UI](screenshot/hasil_ui.png)

---

## Wireframe

![Wireframe](wireframe/wireframe_foto.jpg)

---

## Kesulitan yang Ditemui

Kesulitan yang ditemui saat pengerjaan:
- Mengatur asset gambar dan video
- Menyesuaikan ukuran gambar agar tidak terpotong
- Menambahkan video pada story Instagram

Solusi:
- Menggunakan folder assets
- Menggunakan BoxFit.fitWidth
- Menggunakan package video_player