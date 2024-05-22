import 'dart:convert';

void main() {
  //final wolverine = new Heroe('Logan', 'Regeneracion');

//Creacion de json
  final rawJson = '{"nombre": "Logan", "poder": "Regeneracion"}';

  Map parseJson = json.decode(rawJson);

  //print(parseJson);

  final wolverine = new Heroe.fromJson(parseJson);
  print(wolverine.nombre);
  print(wolverine.poder);
}

//Constructpres con nombre
class Heroe {
  String nombre = "";
  String poder = "";

  Heroe(this.nombre, this.poder);

  //Constructores con nombre
  Heroe.fromJson(Map parsedJson) {
    nombre = parsedJson['nombre'];
    poder = parsedJson['poder'];
  }
}
