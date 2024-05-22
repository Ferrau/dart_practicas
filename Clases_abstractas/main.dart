void main() {
  final perro = new Perro();
  print("El sonido del gato es: ");
  perro.emitirSonido();

  final gato = new Gato();
  print("El sonido del gato es: ");
  gato.emitirSonido();
}

//clase abstracta: obliga a que cuando se implemente la clase abstracta tiene que cumplir
//las condiciones que tiene esa clase abstracta
abstract class Animal {
  int patas = 0;
  void emitirSonido(); //Definicion del metodo, simplementacion
}

//Implementacion de la calse abstracta
class Perro implements Animal {
  //Me obliga a la calse Perro a implentar los metodos y propiedades
  @override
  int patas = 0;

  int colas = 0;

  @override
  void emitirSonido() => print('GUAUUUUU!');
}

class Gato implements Animal {
  @override
  int patas = 0;

  @override
  void emitirSonido() => print("MIAAAUUUU");
}
