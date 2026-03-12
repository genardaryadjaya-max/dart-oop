// Nama: Genard Arya Djaya
// NIM: 231240001394
// Tugas Latihan 2 - Soal 1

// Soal 1: Buat class induk Hewan dengan properti nama dan metode suara(). 
// Selanjutnya, buat class anak Kucing yang merupakan turunan dari Hewan dan tambahkan properti jenisBulu. 
// Buat objek dari class Kucing dan panggil metode suara().

// Class induk Hewan
class Hewan {
  String? nama;

  Hewan(this.nama);

  void suara() {
    print("Hewan bersuara");
  }

  void tampilkanInfo() {
    print("Nama Hewan: $nama");
  }
}

// Class anak Kucing yang mewarisi dari Hewan
class Kucing extends Hewan {
  String? jenisBulu;

  // Constructor
  Kucing(String nama, this.jenisBulu) : super(nama);

  // Override metode suara
  @override
  void suara() {
    print("Meong... Meong...");
  }

  // Override metode tampilkanInfo
  @override
  void tampilkanInfo() {
    print("=== Informasi Kucing ===");
    print("Nama: $nama");
    print("Jenis Bulu: $jenisBulu");
  }
}

void main() {
  // Membuat objek dari class Kucing
  Kucing kucing1 = Kucing("Kitty", "Panjang");
  
  // Menampilkan informasi kucing
  kucing1.tampilkanInfo();
  
  // Memanggil metode suara
  print("Suara: ");
  kucing1.suara();
  
  print("");
  
  // Contoh kucing lain
  Kucing kucing2 = Kucing("Tom", "Pendek");
  kucing2.tampilkanInfo();
  print("Suara: ");
  kucing2.suara();
}
