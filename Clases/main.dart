void main() {
  final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneracion');

  print(wolverine);
}

//Clase: molde
class Heroe {
  String nombre = "";
  String poder = "";

  //Constructor vacio
  //Heroe();

//Forma larga de definir constructor
  // Heroe({required String nombre, required String poder}) {
  //   this.nombre = nombre;
  //   this.poder = poder;
  // }

//Forma larga de definir constructor: argumento con nombre
  Heroe({required this.nombre, required this.poder});

//Forma larga de definir metodo
  // String toString() {
  //   return 'nombre: ${this.nombre} - poder: ${this.poder}';
  // }

  //Forma corta de definir un metodo
  String toString() => 'nombre: $nombre - poder: $poder';
}
