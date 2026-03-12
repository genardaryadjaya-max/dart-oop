// Nama: Genard Arya Djaya
// NIM: 231240001394
// Tugas Latihan 1 - Soal 3

// Soal 3: Buat class Buku dengan properti judul dan pengarang. 
// Implementasikan parameterized constructor untuk menginisialisasi properti saat objek dibuat. 
// Buat objek dari class Buku dengan memberikan nilai pada konstruktor, dan cetak informasi buku tersebut.

class Buku {
  String? judul;
  String? pengarang;

  // Parameterized constructor
  Buku(this.judul, this.pengarang);

  void tampilkanInfo() {
    print("=== Informasi Buku ===");
    print("Judul: $judul");
    print("Pengarang: $pengarang");
  }
}

void main() {
  // Membuat objek dengan memberikan nilai pada constructor
  Buku buku1 = Buku("Laskar Pelangi", "Andrea Hirata");
  
  // Mencetak informasi buku
  buku1.tampilkanInfo();
}
