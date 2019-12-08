main(){
  var rizky = Mahasiswa('Rizky Anfasa F M','Kudus','20160140032');
  rizky.cetak();

  var budi = Dosen('Budi Setiawan', 'Jakarta');
  budi.jabatan = 'Kepala Prodi';
  budi.cetak();
  print(budi.jabatan);
}

class CivitasAkademika{
  String _nama;
  String _alamat;

  CivitasAkademika(this._nama, this._alamat);

  set nama(String nama) => this._nama = nama;
  String get nama => this._nama;

  set alamat(String alamat) => this._alamat = alamat;
  String get alamat => this._alamat;

  void cetak(){
    print("Namaku $nama alamatku $alamat");
  }
}

class Mahasiswa extends CivitasAkademika{
  String _nim;

  Mahasiswa(String nama, String alamat, this._nim) : super(nama, alamat);

  set nim(String nim) => this._nim = nim;
  String get nim => this._nim;

  @override
  void cetak(){
    print("Namaku $nama alamatku $alamat NIMku $nim");
  }
}

class Dosen extends CivitasAkademika{
  String _jabatan;

  Dosen(String nama, String alamat) : super(nama, alamat);

  set jabatan(String jabatan) => this._jabatan = jabatan;
  String get jabatan => this._jabatan;
}
