// Nama: Genard Arya Djaya
// NIM: 231240001394
// Tugas Latihan 1 - Soal 4

// Soal 4: Buat class Segitiga dengan properti alas, tinggi, dan jenis (contoh: siku-siku, sama sisi, dsb.). 
// Implementasikan named constructor untuk membuat objek Segitiga berdasarkan jenisnya. 
// Buat objek dari class Segitiga menggunakan named constructor, dan cetak informasi segitiga tersebut.

class Segitiga {
  double? alas;
  double? tinggi;
  String? jenis;

  // Default constructor
  Segitiga(this.alas, this.tinggi, this.jenis);

  // Named constructor untuk segitiga siku-siku
  Segitiga.sikuSiku(double alas, double tinggi) {
    this.alas = alas;
    this.tinggi = tinggi;
    this.jenis = "Siku-siku";
  }

  // Named constructor untuk segitiga sama sisi
  Segitiga.samaSisi(double sisi) {
    this.alas = sisi;
    this.tinggi = sisi * 0.866; // tinggi segitiga sama sisi = sisi * √3/2
    this.jenis = "Sama Sisi";
  }

  // Named constructor untuk segitiga sama kaki
  Segitiga.samaKaki(double alas, double tinggi) {
    this.alas = alas;
    this.tinggi = tinggi;
    this.jenis = "Sama Kaki";
  }

  double hitungLuas() {
    return 0.5 * alas! * tinggi!;
  }

  void tampilkanInfo() {
    print("=== Informasi Segitiga ===");
    print("Jenis: $jenis");
    print("Alas: $alas cm");
    print("Tinggi: ${tinggi!.toStringAsFixed(2)} cm");
    print("Luas: ${hitungLuas().toStringAsFixed(2)} cm²");
  }
}

void main() {
  // Membuat objek menggunakan named constructor
  Segitiga segitiga1 = Segitiga.sikuSiku(10, 8);
  segitiga1.tampilkanInfo();
  
  print("");
  
  Segitiga segitiga2 = Segitiga.samaSisi(12);
  segitiga2.tampilkanInfo();
  
  print("");
  
  Segitiga segitiga3 = Segitiga.samaKaki(15, 10);
  segitiga3.tampilkanInfo();
}
