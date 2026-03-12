// Nama: Genard Arya Djaya
// NIM: 231240001394
// Tugas Latihan 2 - Soal 3

// Soal 3: Buat class BangunDatar dengan metode hitungLuas. 
// Selanjutnya, buat class turunan Persegi dan Segitiga yang override metode hitungLuas. 
// Buat objek dari kedua class tersebut dan panggil metode hitungLuas untuk masing-masing.

// Class induk BangunDatar
class BangunDatar {
  String? nama;

  BangunDatar(this.nama);

  // Metode hitungLuas (akan di-override oleh class turunan)
  double hitungLuas() {
    return 0;
  }

  void tampilkanInfo() {
    print("Bangun Datar: $nama");
    print("Luas: ${hitungLuas()} cm²");
  }
}

// Class turunan Persegi
class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi) : super("Persegi");

  // Override metode hitungLuas
  @override
  double hitungLuas() {
    return sisi * sisi;
  }

  @override
  void tampilkanInfo() {
    print("=== Persegi ===");
    print("Sisi: $sisi cm");
    print("Luas: ${hitungLuas()} cm²");
  }
}

// Class turunan Segitiga
class Segitiga extends BangunDatar {
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi) : super("Segitiga");

  // Override metode hitungLuas
  @override
  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }

  @override
  void tampilkanInfo() {
    print("=== Segitiga ===");
    print("Alas: $alas cm");
    print("Tinggi: $tinggi cm");
    print("Luas: ${hitungLuas()} cm²");
  }
}

void main() {
  // Membuat objek Persegi
  Persegi persegi1 = Persegi(10);
  persegi1.tampilkanInfo();
  print("");
  
  // Membuat objek Segitiga
  Segitiga segitiga1 = Segitiga(12, 8);
  segitiga1.tampilkanInfo();
  print("");
  
  // Demonstrasi polymorphism
  print("=== Demonstrasi Polymorphism ===");
  List<BangunDatar> bangunDatarList = [
    Persegi(15),
    Segitiga(10, 6),
    Persegi(8),
    Segitiga(14, 10)
  ];
  
  for (var bangun in bangunDatarList) {
    print("${bangun.nama}: Luas = ${bangun.hitungLuas()} cm²");
  }
}
