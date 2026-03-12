// Nama: Genard Arya Djaya
// NIM: 231240001394
// Tugas Latihan 1 - Soal 2

// Soal 2: Buatlah class Mahasiswa dengan properti nama dan nim. 
// Berikan nilai default untuk kedua properti tersebut. 
// Buat objek dari class Mahasiswa tanpa memberikan nilai tambahan, dan cetak informasi mahasiswa tersebut.

class Mahasiswa {
  String? nama;
  String? nim;

  // Constructor dengan nilai default
  Mahasiswa({String? nama = "Mahasiswa Default", String? nim = "000000000000"}) {
    this.nama = nama;
    this.nim = nim;
  }

  void tampilkanInfo() {
    print("=== Informasi Mahasiswa ===");
    print("Nama: $nama");
    print("NIM: $nim");
  }
}

void main() {
  // Membuat objek tanpa memberikan nilai tambahan
  Mahasiswa mahasiswa1 = Mahasiswa();
  
  // Mencetak informasi mahasiswa
  mahasiswa1.tampilkanInfo();
}
