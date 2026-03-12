// Nama: Genard Arya Djaya
// NIM: 231240001394
// Tugas Latihan 2 - Soal 2

// Soal 2: Buat class RekeningBank dengan properti saldo dan metode setor dan tarik. 
// Implementasikan encapsulation agar saldo tidak dapat diakses langsung dari luar class. 
// Buat objek dari class RekeningBank dan lakukan beberapa transaksi.

class RekeningBank {
  // Properti private (menggunakan underscore)
  String? _nomorRekening;
  String? _namaPemilik;
  double _saldo = 0;

  // Constructor
  RekeningBank(this._nomorRekening, this._namaPemilik, this._saldo);

  // Getter untuk saldo (hanya bisa membaca, tidak bisa mengubah langsung)
  double getSaldo() {
    return _saldo;
  }

  // Getter untuk nomor rekening
  String? getNomorRekening() {
    return _nomorRekening;
  }

  // Getter untuk nama pemilik
  String? getNamaPemilik() {
    return _namaPemilik;
  }

  // Metode untuk menyetor uang
  void setor(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print("Berhasil menyetor Rp${jumlah.toStringAsFixed(0)}");
      print("Saldo sekarang: Rp${_saldo.toStringAsFixed(0)}");
    } else {
      print("Jumlah setoran harus lebih dari 0");
    }
  }

  // Metode untuk menarik uang
  void tarik(double jumlah) {
    if (jumlah > 0) {
      if (jumlah <= _saldo) {
        _saldo -= jumlah;
        print("Berhasil menarik Rp${jumlah.toStringAsFixed(0)}");
        print("Saldo sekarang: Rp${_saldo.toStringAsFixed(0)}");
      } else {
        print("Saldo tidak mencukupi!");
        print("Saldo Anda: Rp${_saldo.toStringAsFixed(0)}");
      }
    } else {
      print("Jumlah penarikan harus lebih dari 0");
    }
  }

  // Metode untuk menampilkan informasi rekening
  void tampilkanInfo() {
    print("=== Informasi Rekening ===");
    print("Nomor Rekening: $_nomorRekening");
    print("Nama Pemilik: $_namaPemilik");
    print("Saldo: Rp${_saldo.toStringAsFixed(0)}");
  }
}

void main() {
  // Membuat objek RekeningBank
  RekeningBank rekening1 = RekeningBank("1234567890", "Genard Arya Djaya", 1000000);
  
  // Menampilkan informasi awal
  rekening1.tampilkanInfo();
  print("");
  
  // Melakukan transaksi setor
  print("--- Transaksi Setor ---");
  rekening1.setor(500000);
  print("");
  
  // Melakukan transaksi tarik
  print("--- Transaksi Tarik ---");
  rekening1.tarik(300000);
  print("");
  
  // Mencoba menarik melebihi saldo
  print("--- Transaksi Tarik (Gagal) ---");
  rekening1.tarik(2000000);
  print("");
  
  // Menampilkan informasi akhir
  rekening1.tampilkanInfo();
  
  // Demonstrasi encapsulation: tidak bisa mengakses _saldo langsung
  // rekening1._saldo = 10000000; // Ini akan error jika dijalankan dari file terpisah
  // Hanya bisa mengakses melalui getter
  print("\nMengakses saldo melalui getter: Rp${rekening1.getSaldo().toStringAsFixed(0)}");
}
