main(){
  var rizky = Mahasiswa();
  rizky.nama = "Rizky Anfasa F M";
  rizky.alamat = "Kudus";
  rizky.nim = "20160140032";
  rizky.cetak();

  var budi = Dosen();
  budi.nama = "Budi Setiawan";
  budi.alamat = "Jakarta";
  budi.jabatan = "Kepala Prodi";
  budi.cetak();
}

class CivitasAkademika{
  String _nama;
  String _alamat;

  set nama(String nama) => this._nama = nama;
  String get nama => this._nama;

  set alamat(String alamat) => this._alamat = alamat;
  String get alamat => this._alamat;

  // Overriden
  void cetak(){
    print("Namaku $nama alamatku $alamat");
  }
}

class Mahasiswa extends CivitasAkademika{
  String _nim;

  set nim(String nim) => this._nim = nim;
  String get nim => this._nim;

  // Overriding
  void cetak(){
    print("Namaku $nama alamatku $alamat NIMku $nim");
  }
}

class Dosen extends CivitasAkademika{
  String _jabatan;

  set jabatan(String jabatan) => this._jabatan = jabatan;
  String get jabatan => this._jabatan;
}
