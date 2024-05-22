//ASYNC y AWAIT:

//ASYNC: nos ayuda a transformar una funcion en una tarea asincrona. Los constructores no pueden ser asincronos.

//AWAIT: me permite esperar a que se resuelva la misma, para usarlo hay que estar dentro de un async

//FUTURES: Se usan para tareas asincronas - promesas -
//Se hace en un hilo independiente al hilo principal del cual estamos ejecutando,
//cuando se obtiene el valor, puedo seguir ejecutando otra parte del programa.

void main() async {
  print("Estamos a punto de pedir datos");

  String data = await httpGet('https://google.com'); //await: esperar

  print(data);

  print("Ultima linea");
}

//Le estoy especificando que me va a devolver string
Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 4), () {
    //se ejecutáun callback una vez que pasen esos 4 segundos
    return "Hola mundo";
  });
}
