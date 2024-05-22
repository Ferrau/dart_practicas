void main() {
  final superman = new Heroe();
  superman.nombre = "Clark Kent";

  final luthor = new Villano();
  luthor.nombre = "Lex Luthor";
}

//No puedo crear instancias de la clase Personaje abstracta
abstract class Personaje {
  String nombre = "";
  String poder = "";
}

//EXTENDS: extiende todas sus propiedades y metodos (HERENCIA)
class Heroe extends Personaje {
  int valentia = 0;
}

class Villano extends Personaje {
  int maldad = 0;
}
