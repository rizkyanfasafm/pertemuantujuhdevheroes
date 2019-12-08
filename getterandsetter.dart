main(){
  var rizky = Student();
  rizky.nama = "Rizky Anfasa F M";
  rizky.tahunKelahiran = 2000;
  rizky.cetak();
  // print(rizky.nama);
}

class Student{
  var tahunIni = DateTime.now().year;

  String _nama;
  int _umur;

  set nama(String nama) => this._nama = nama;
  String get nama => this._nama;

  set tahunKelahiran(int tahunKelahiran) => this._umur = tahunIni - tahunKelahiran;
  int get umur => this._umur;

  void cetak(){
    print("Namaku ${this.nama} Umurku ${this.umur}");
  }
}
