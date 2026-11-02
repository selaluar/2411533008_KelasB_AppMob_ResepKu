# 2411533008_KelasB_AppMob_ResepKu

Project ResepKu untuk Praktikum Aplikasi Mobile (DIF61145) Kelas B, Departemen Informatika FTI Universitas Andalas. Project ini dimulai di Modul 6 dan dilanjutkan sampai Modul 10.

- NIM: 2411533008
- Nama: Arya Pratama Hendri
- Modul 6: State Management dengan `setState()` dan Provider

## Ketentuan modul yang dipegang

- Satu project untuk Modul 6 sampai 10. Modul berikutnya melanjutkan repo ini, tanpa project baru, dengan commit di akhir setiap modul.
- `test/widget_test.dart` bawaan template dihapus karena merujuk class `MyApp` yang tidak ada.
- Footer identitas (`2411533008 • Arya Pratama Hendri`) tampil di setiap halaman lewat `builder` di `MaterialApp`. Baris `builder` itu tidak boleh dihapus saat `main.dart` diganti.

## Isi Modul 6

| Bagian | File |
|---|---|
| A. State lokal (porsi) | `lib/pages/detail_page.dart` |
| B. Eksperimen favorit lokal | lihat commit "Bagian B" |
| C. Favorit dengan Provider | `lib/providers/favorite_provider.dart`, `lib/widgets/recipe_tile.dart`, `lib/widgets/favorite_badge_button.dart`, `lib/pages/favorite_page.dart` |
| Latihan 1. Tema gelap/terang | `lib/providers/theme_provider.dart`, `lib/pages/settings_page.dart`, `lib/main.dart` |
| Latihan 2. Hapus semua favorit | `lib/pages/favorite_page.dart` |

Setiap bagian modul punya commit sendiri, jadi versi kode per langkah bisa dilihat di riwayat commit.

## Cara menjalankan

Repo ini berisi `lib/` dan `pubspec.yaml`. Folder platform (android, ios, web, dll.) dibuat di laptop:

```bash
git clone https://github.com/selaluar/2411533008_KelasB_AppMob_ResepKu.git resepku
cd resepku
flutter create . --project-name resepku
flutter pub get
flutter run
```

`flutter create .` membuat ulang `test/widget_test.dart`. Hapus lagi file itu sebelum menjalankan aplikasi.
