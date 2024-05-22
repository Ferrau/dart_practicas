void main() {
  //INICIO: Numerico
  int empleados = 10;

  double pi = 3.141592;

  //Interpolacion
  print('$empleados - $pi');

  //FIN: Numerico

  //INICIO : String - Cadena de caracteres

  String nombre =
      'Est"er'; //Podemos meterle por dentro las comillas dobles y lo toma igal
  print('$nombre');

  print(nombre[0]); //Primer posicion
  print(nombre[nombre.length - 1]); //las listas empiezan en la posicion 0.

  //FIN : String - Cadena de caracteres

  //INICIO: TIPO DE DATO: BOOLEAN

  bool activado = true;
  print(activado);

  if (!activado) {
    print('El motor esta funcionando');
  } else {
    print('El motor esta desactivado');
  }
  //FIN: TIPO DE DATO: BOOLEAN

  //INCIO: LISTAS: colecciones que tiene algo en comun

  //Las listas son del tipo DYNAMIC
  List numeros = [1, 2, 3, 4, 5];
  print(numeros);
  numeros.add("Hola"); //¿Como agregar un elemnto a la lista?
  print(numeros);

  //Asignandole realmente que lo que llevara dentro sera de tipo INT
  List<int> numeros2 = [1, 2, 3, 4, 5];
  print(numeros2);
  numeros2.add(6); //¿Como agregar un elemnto a la lista?
  print(numeros2);
  //FIN: LISTAS: colecciones que tienen algo en comun

  //Tamaño fijo
  // List masNumeros = new List(10);
  // print(masNumeros);

  //INICIO: MAP
  //TIPO DE DATO:
  //MAP --> son pares de valores: {llave: valor}
  //Diccionario de datos: Palabra : definicion .....
  Map<String, dynamic> persona = {
    'nombre': 'Ester',
    'edad': 21,
    'profesion': 'Desarrolladora'
  };

  print(persona['nombre']);
  print(persona['edad']);
  print(persona['profesion']);

  Map<int, String> personas = {1: 'Ester', 2: 'Talia', 9: 'Ruben'};

  personas.addAll({4: 'Alegra'});
  print(personas);
  print(personas[9]); //no es una lista, estoy apuntado directamente a ese valor

  //FIN: TIPO DE DATO: MAP

  //Llamados a la funcion
  saludar();

  var mensaje = cantar(texto: 'Cantando', nombre: 'Cumbia');
  print(mensaje);
}

//INICIO: Funciones en Dart

//VOID: no regresa nada y su resultado no lo voy a poder almacenar en variables
void saludar() {
  print("Hola");
}

//Cuando tiene una llave dentro de los parentesis
//significa que son parametros con nombres
String cantar({required String texto, required String nombre}) {
  return '$texto $nombre';
}

//Esto es lo mismo que CANTAR (=> es como si fuera un return)
String cantar2({required String texto, required String nombre}) =>
    '$texto $nombre';

  //FIN: Funciones en Dart