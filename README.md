# Tugas UI/UX Flutter — Instagram UI Clone

## Identitas
- **Nama:** Muhammad Ryan Hidayat
- **NIM:** (isi NIM kamu)
- **Pilihan:** B — Instagram

---

## Deskripsi Singkat

Project ini merupakan replikasi tampilan aplikasi Instagram menggunakan Flutter.

Halaman yang dibuat:
- Home Feed Instagram
- Story Instagram
- Bottom Navigation Bar
- Feed postingan dengan caption dan jumlah like

Pada project ini digunakan gambar lokal dari folder assets untuk menampilkan foto profil, story, dan postingan.

---

## Widget yang Digunakan

| Widget | Fungsi |
|---|---|
| Scaffold | Struktur utama halaman |
| AppBar | Header aplikasi Instagram |
| ListView | Menampilkan daftar postingan |
| CircleAvatar | Menampilkan foto profil dan story |
| Image.asset | Menampilkan gambar dari assets |
| BottomNavigationBar | Navigasi bawah aplikasi |
| Padding | Mengatur jarak antar widget |
| Row & Column | Mengatur layout horizontal dan vertikal |
| ClipRRect | Membuat sudut gambar melengkung |
| Text | Menampilkan tulisan |
| Icon | Menampilkan icon aplikasi |
| Container | Membungkus dan mengatur tampilan widget |
| SizedBox | Memberi spasi antar widget |

---

## Screenshot

### Tampilan Aplikasi
![Screenshot 1](screenshot/Screenshot%202026-05-20%20000632.png)

![Screenshot 2](screenshot/Screenshot%202026-05-20%20000931.png)

![Screenshot 3](screenshot/Screenshot%202026-05-20%20000941.png)

---

## Wireframe

![Wireframe](wireframe/Screenshot%202026-05-20%20000736.png)

---

## Kesulitan yang Ditemui

Beberapa kesulitan yang ditemui saat membuat project ini:

- Mengatur ukuran gambar agar tidak terpotong
- Mengatur layout feed Instagram agar mirip dengan aplikasi asli
- Mengatur asset image pada Flutter
- Memahami penggunaan ListView dan widget tree

Cara mengatasinya:
- Menggunakan `BoxFit.fitWidth`
- Menggunakan `Padding` dan `ClipRRect`
- Menambahkan asset pada `pubspec.yaml`
- Membagi tampilan menjadi widget-widget kecil