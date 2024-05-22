//FUTURES: Se usan para tareas asincronas - promesas -
//Se hace en un hilo independiente al hilo principal del cual estamos ejecutando,
//cuando se obtiene el valor, puedo seguir ejecutando otra parte del programa.

void main() {
  print("Estamos a punto de pedir datos");
  httpGet('https://google.com').then((data) {
    print(data);
  });
  print("Ultima linea");
}

//Le estoy especificando que me va a devolver string
Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 4), () {
    //se ejecutáun callback una vez que pasen esos 4 segundos
    return "Hola mundo";
  });
}
