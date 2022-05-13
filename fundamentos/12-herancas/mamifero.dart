import 'animal.dart';

class Mamifero extends Animal {
  String? sexo;
  Mamifero(this.sexo, super.idade, {super.docil});

  void alimentar() {
    print('Se alimenta como um mamífero');
  }
}
