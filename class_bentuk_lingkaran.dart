// Nama: Genard Arya Djaya
// NIM: 231240001394
// Tugas Latihan 2 - Soal 4

// Soal 4: Buat abstract class Bentuk dengan metode abstrak hitungLuas. 
// Selanjutnya, buat class Lingkaran yang merupakan turunan dari Bentuk dan implementasikan metode hitungLuas. 
// Buat objek dari class Lingkaran dan panggil metode hitungLuas.

// Abstract class Bentuk
abstract class Bentuk {
  String? nama;

  Bentuk(this.nama);

  // Metode abstrak hitungLuas (harus diimplementasikan oleh class turunan)
  double hitungLuas();

  // Metode konkret
  void tampilkanInfo() {
    print("Bentuk: $nama");
    print("Luas: ${hitungLuas().toStringAsFixed(2)} cm²");
  }
}

// Class Lingkaran yang mewarisi dari Bentuk
class Lingkaran extends Bentuk {
  double jariJari;
  static const double pi = 3.14159;

  Lingkaran(this.jariJari) : super("Lingkaran");

  // Implementasi metode abstrak hitungLuas
  @override
  double hitungLuas() {
    return pi * jariJari * jariJari;
  }

  // Method tambahan untuk menghitung keliling
  double hitungKeliling() {
    return 2 * pi * jariJari;
  }

  @override
  void tampilkanInfo() {
    print("=== Lingkaran ===");
    print("Jari-jari: $jariJari cm");
    print("Luas: ${hitungLuas().toStringAsFixed(2)} cm²");
    print("Keliling: ${hitungKeliling().toStringAsFixed(2)} cm");
  }
}

// Class tambahan: Persegi Panjang
class PersegiPanjang extends Bentuk {
  double panjang;
  double lebar;

  PersegiPanjang(this.panjang, this.lebar) : super("Persegi Panjang");

  @override
  double hitungLuas() {
    return panjang * lebar;
  }

  @override
  void tampilkanInfo() {
    print("=== Persegi Panjang ===");
    print("Panjang: $panjang cm");
    print("Lebar: $lebar cm");
    print("Luas: ${hitungLuas().toStringAsFixed(2)} cm²");
  }
}

void main() {
  // Membuat objek dari class Lingkaran
  Lingkaran lingkaran1 = Lingkaran(7);
  lingkaran1.tampilkanInfo();
  print("");
  
  // Membuat objek lingkaran lain dengan jari-jari berbeda
  Lingkaran lingkaran2 = Lingkaran(10.5);
  lingkaran2.tampilkanInfo();
  print("");
  
  // Membuat objek PersegiPanjang
  PersegiPanjang persegiPanjang1 = PersegiPanjang(15, 8);
  persegiPanjang1.tampilkanInfo();
  print("");
  
  // Demonstrasi polymorphism dengan abstract class
  print("=== Demonstrasi Polymorphism ===");
  List<Bentuk> bentukList = [
    Lingkaran(5),
    PersegiPanjang(10, 6),
    Lingkaran(12),
    PersegiPanjang(8, 8)
  ];
  
  for (var bentuk in bentukList) {
    print("${bentuk.nama}: Luas = ${bentuk.hitungLuas().toStringAsFixed(2)} cm²");
  }
}
