// Nama: Genard Arya Djaya
// NIM: 231240001394
// Tugas Latihan 1 - Soal 5

// Soal 5: Buat class Warna dengan properti red, green, dan blue. 
// Implementasikan constant constructor untuk menginisialisasi warna yang bersifat konstan. 
// Buat beberapa objek dari class Warna menggunakan constant constructor, dan cetak informasi warna-warna tersebut.

class Warna {
  final int red;
  final int green;
  final int blue;

  // Constant constructor
  const Warna(this.red, this.green, this.blue);

  void tampilkanInfo() {
    print("RGB($red, $green, $blue)");
  }

  String getNamaWarna() {
    if (red == 255 && green == 0 && blue == 0) return "Merah";
    if (red == 0 && green == 255 && blue == 0) return "Hijau";
    if (red == 0 && green == 0 && blue == 255) return "Biru";
    if (red == 255 && green == 255 && blue == 0) return "Kuning";
    if (red == 255 && green == 255 && blue == 255) return "Putih";
    if (red == 0 && green == 0 && blue == 0) return "Hitam";
    return "Warna Custom";
  }
}

void main() {
  // Membuat objek menggunakan constant constructor
  const Warna merah = Warna(255, 0, 0);
  const Warna hijau = Warna(0, 255, 0);
  const Warna biru = Warna(0, 0, 255);
  const Warna kuning = Warna(255, 255, 0);
  const Warna putih = Warna(255, 255, 255);

  print("=== Informasi Warna-Warna ===");
  print("Warna 1: ${merah.getNamaWarna()} - RGB(${merah.red}, ${merah.green}, ${merah.blue})");
  print("Warna 2: ${hijau.getNamaWarna()} - RGB(${hijau.red}, ${hijau.green}, ${hijau.blue})");
  print("Warna 3: ${biru.getNamaWarna()} - RGB(${biru.red}, ${biru.green}, ${biru.blue})");
  print("Warna 4: ${kuning.getNamaWarna()} - RGB(${kuning.red}, ${kuning.green}, ${kuning.blue})");
  print("Warna 5: ${putih.getNamaWarna()} - RGB(${putih.red}, ${putih.green}, ${putih.blue})");
  
  // Menunjukkan bahwa objek konstan memiliki hash code yang sama
  print("\n=== Hash Code Comparison ===");
  const Warna merah2 = Warna(255, 0, 0);
  print("Hash code merah: ${merah.hashCode}");
  print("Hash code merah2: ${merah2.hashCode}");
  print("Apakah sama? ${merah.hashCode == merah2.hashCode}");
}
