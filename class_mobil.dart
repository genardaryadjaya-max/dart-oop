// Nama: Genard Arya Djaya
// NIM: 231240001394
// Tugas Latihan 1 - Soal 1

// Soal 1: Buatlah sebuah class Mobil dalam Dart yang memiliki properti seperti merk, model, dan tahun. 
// Selanjutnya, buat objek dari class tersebut dan inisialisasikan dengan nilai tertentu. 
// Cetak informasi mobil tersebut.

class Mobil {
  String? merk;
  String? model;
  int? tahun;

  void tampilkanInfo() {
    print("=== Informasi Mobil ===");
    print("Merk: $merk");
    print("Model: $model");
    print("Tahun: $tahun");
  }
}

void main() {
  // Membuat objek dari class Mobil
  Mobil mobil1 = Mobil();
  
  // Menginisialisasi nilai properti
  mobil1.merk = "Toyota";
  mobil1.model = "Avanza";
  mobil1.tahun = 2023;
  
  // Mencetak informasi mobil
  mobil1.tampilkanInfo();
}
