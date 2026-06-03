# Template UIKit XcodeGen

Template proyek iOS berbasis UIKit yang dikonfigurasi menggunakan **XcodeGen**. Proyek ini diatur secara programatis tanpa menggunakan Storyboard utama (`Main.storyboard`), melainkan menggunakan konfigurasi `SceneDelegate` secara langsung.

## Persyaratan Sistem

- Xcode 13 atau versi terbaru
- [XcodeGen](https://github.com/yonaskolb/XcodeGen)

## Cara Instalasi XcodeGen

Anda bisa menginstal XcodeGen melalui Homebrew:

```bash
brew install xcodegen
```

## Struktur Proyek

```text
.
├── Makefile                # Shortcut untuk tugas pengembangan (generate & clean)
├── README.md               # Dokumentasi proyek (berkas ini)
├── project.yml             # Konfigurasi XcodeGen
└── Sources/                # Direktori kode sumber utama
    ├── AppDelegate.swift   # Lifecycle aplikasi
    ├── SceneDelegate.swift # Inisialisasi tampilan awal secara programatis
    ├── ViewController.swift# Controller utama/pertama
    ├── Info.plist          # Konfigurasi properti bundel iOS
    ├── LaunchScreen.storyboard # Tampilan splash saat aplikasi dimuat
    └── Assets.xcassets/    # Aset gambar, warna, dan ikon aplikasi
```

## Panduan Penggunaan

### 1. Generasi Proyek Xcode
Untuk menghasilkan berkas `.xcodeproj` dari file `project.yml`, Anda dapat menjalankan perintah berikut di terminal:

```bash
make generate
```
*Atau jalankan perintah asli:* `xcodegen generate`

### 2. Membuka Proyek
Setelah berhasil digenerasi, Anda dapat membuka proyek menggunakan Xcode:

```bash
open TemplateUIKit.xcodeproj
```

### 3. Membersihkan Proyek
Jika Anda ingin menghapus berkas `.xcodeproj` yang digenerasi agar direktori kembali bersih:

```bash
make clean
```

## Detail Konfigurasi (`project.yml`)

Berkas `project.yml` menentukan struktur proyek iOS, konfigurasi target, dan target deployment:
- **Deployment Target**: iOS 15.0
- **Swift Version**: Sesuai dengan Xcode default
- **Bundle ID Prefix**: `com.example`
- **Main Interface**: Diatur secara programatis melalui `SceneDelegate` (bukan Main storyboard).
