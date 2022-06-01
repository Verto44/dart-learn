import 'dart:math';

/*
  * Singleton Padrão
  - Forma padrão de implementar o singleton

*/

void main() {
  //O valor do id será o mesmo para todas as instancias desse objeto

  var object = SingletonPadrao.instance;
  print(object.id);

  var object2 = SingletonPadrao.instance;
  print(object2.id);
}

class SingletonPadrao {
  static SingletonPadrao? _instance;
  int id = Random().nextInt(100);

  //Contrutor privado
  SingletonPadrao._();

  //Contrutor privado (outra forma de implementar)
  //SingletonPadrao.internal();

  static get instance {
    _instance ??= SingletonPadrao._();
    //_instance ??= SingletonPadrao.internal();
    return _instance;
  }
}
