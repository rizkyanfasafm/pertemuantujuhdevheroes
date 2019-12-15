main(){
  var pokemon = Pokedex("Pokemon", 200,10);
  var bulbasaur = Pokedex("Bulbasaur", 300,15);
  var tmpr = Tempur();

  pokemon.cetak();
  bulbasaur.cetak();

  tmpr.attack(pokemon, bulbasaur);
}

class Pokedex{
  String nama;
  int kekuatan;
  int damage;

  Pokedex(this.nama,this.kekuatan,this.damage);

  void cetak(){
    print("Nama ${this.nama} Kekuatan ${this.kekuatan}");
  }
}

class Tempur{
  void attack(Pokedex poke1, Pokedex poke2){
    // if(poke1.kekuatan >= poke2.kekuatan){
    //   print("${poke1.nama} menang dengan kekuatan ${poke1.kekuatan}");
    // }else{
    //   print("${poke2.nama} menang dengan kekuatan ${poke2.kekuatan}");
    // }
    poke2.kekuatan -= poke1.damage;
    print("si ${poke1.nama} menyerang dengan damage ${poke1.damage} menyebabkan ${poke2.kekuatan} ${poke2.nama} berkurang");
  }
}
