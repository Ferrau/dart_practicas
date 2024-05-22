//MIXINS: me sirve para asignar metodos o propiedades que necesite

//https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
//Las mixinas son una forma de reutilizar el código de una clase en múltiples jerarquías de clase.

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

/*COMEINZA MIXIN: me sirve paraasignar metodos o propiedades que necesite*/
abstract class Volador {
  void volar() => print("Estoy volando");
}

abstract class Caminante {
  void caminar() => print("Estoy caminando");
}

abstract class Nadador {
  void nadar() => print("Estoy nadando");
}
/*TERMINA MIXIN: me sirve paraasignar metodos o propiedades que necesite*/

class Delfin extends Mamifero with Nadador {}

//Se utiliza 2 mixin y se separa con coma
class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Pescado extends Pez with Nadador {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

void main() {
  final pato = new Pato();
  pato.volar();

  final paloma = new Paloma();
  paloma.caminar();
}
