# Template UIKit XcodeGen

Template proyek iOS berbasis UIKit yang dikonfigurasi menggunakan **XcodeGen**. Proyek ini diatur secara programatis tanpa menggunakan Storyboard utama (`Main.storyboard`), melainkan menggunakan konfigurasi `SceneDelegate` secara langsung.

## Persyaratan Sistem

- Xcode 13 atau versi terbaru
- [XcodeGen](https://github.com/yonaskolb/XcodeGen)
- [CocoaPods](https://cocoapods.org)

## Cara Instalasi

Instal XcodeGen dan CocoaPods via terminal:

```bash
# XcodeGen
brew install xcodegen

# CocoaPods
sudo gem install cocoapods
```

## Struktur Proyek

```text
.
├── Makefile                # Shortcut untuk tugas pengembangan (generate, setup, & clean)
├── Podfile                 # Konfigurasi dependensi CocoaPods
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

### 1. Inisialisasi Proyek (XcodeGen + CocoaPods)
Untuk menjalan XcodeGen sekaligus memasang CocoaPods dependensi, jalankan perintah:

```bash
make setup
```
Perintah ini akan menghasilkan berkas `TemplateUIKit.xcodeproj` dilanjutkan dengan menjalankan `pod install` yang akan menghasilkan berkas `TemplateUIKit.xcworkspace`.

### 2. Membuka Proyek
Jika Anda menggunakan CocoaPods, selalu buka berkas workspace (`.xcworkspace`):

```bash
open TemplateUIKit.xcworkspace
```

*Catatan: Jika Anda tidak menggunakan CocoaPods, Anda cukup menjalankan `make generate` dan membuka `open TemplateUIKit.xcodeproj`.*

### 3. Membersihkan Proyek
Jika Anda ingin menghapus semua berkas proyek dan dependensi yang digenerasi:

```bash
make clean
```

## Cara Mengubah Nama Proyek (Rename)

Jika Anda ingin mengubah nama proyek dari `TemplateUIKit` menjadi nama proyek Anda sendiri (misalnya `MyProject`):

1. **Ubah `project.yml`**:
   Buka berkas `project.yml` dan ubah nilai `name` serta nama target di bawah `targets` sesuai keinginan Anda:
   ```yaml
   name: MyProject
   targets:
     MyProject:
       type: application
       ...
   ```
2. **Ubah `Podfile`**:
   Buka berkas `Podfile` dan sesuaikan nama target Anda:
   ```ruby
   target 'MyProject' do
     pod 'Alamofire', '~> 5.6'
   end
   ```
3. **Regenerasi Proyek**:
   Jalankan perintah berikut di terminal untuk menghapus berkas konfigurasi lama dan membuat yang baru:
   ```bash
   make clean
   make setup
   ```
   *Catatan: Selalu buka berkas `.xcworkspace` baru hasil generasi (misalnya `MyProject.xcworkspace`) menggunakan Xcode.*

## Detail Konfigurasi (`project.yml`)

Berkas `project.yml` menentukan struktur proyek iOS, konfigurasi target, dan target deployment:
- **Deployment Target**: iOS 15.0
- **Swift Version**: Sesuai dengan Xcode default
- **Bundle ID Prefix**: `com.example`
- **Main Interface**: Diatur secara programatis melalui `SceneDelegate` (bukan Main storyboard).
