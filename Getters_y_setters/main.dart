void main() {
  final cuadrado = new Cuadrado();
  cuadrado.lado = 10;
  print(cuadrado);

  print('area: ${cuadrado.area}');
}

//Getters y Setters
class Cuadrado {
  //Propiedades privadas: utilizando el ( _ ) adelante
  double _lado = 0;
  // double _area = 0;

  //SETTERS
  set lado(double valor) {
    if (valor <= 0) {
      throw ("El lado no puede ser menor o igul a 0");
    }

    _lado = valor;
  }

  //GETTERS
  get area => (_lado * _lado);

  @override
  toString() => 'Lado: $_lado';
}
