main(){
  var pokemon = Pokedex("Pokemon", 200);
  var bulbasaur = Pokedex("Bulbasaur", 300);
  var tmpr = Tempur();

  pokemon.cetak();
  bulbasaur.cetak();

  tmpr.attack(pokemon, bulbasaur);
}

class Pokedex{
  String nama;
  int kekuatan;

  Pokedex(this.nama,this.kekuatan);

  void cetak(){
    print("Nama ${this.nama} Kekuatan ${this.kekuatan}");
  }
}

class Tempur{
  void attack(Pokedex poke1, Pokedex poke2){
    if(poke1.kekuatan >= poke2.kekuatan){
      print("${poke1.nama} menang dengan kekuatan ${poke1.kekuatan}");
    }else{
      print("${poke2.nama} menang dengan kekuatan ${poke2.kekuatan}");
    }
  }
}
