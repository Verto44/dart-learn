import 'dart:math';

/*
  * Singleton Factory
  - Essa forma implementa o singleton de forma transparente no objeto, sem  indicar explicitamente
  que se trata de uma implementação Singleton

*/

void main() {
  //O valor do id será o mesmo para todas as instancias desse objeto

  var object = SingletonFactory();
  print(object.id);

  var object2 = SingletonFactory();
  print(object2.id);
}

class SingletonFactory {
  static SingletonFactory? _instance;
  int id = Random().nextInt(100);

  //Contrutor privado
  SingletonFactory._();

  factory SingletonFactory() {
    _instance ??= SingletonFactory._();
    return _instance!;
  }
}
