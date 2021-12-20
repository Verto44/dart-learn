import 'animal.dart';

class Mamifero extends Animal {
  String? sexo;
  Mamifero(this.sexo, String? idade, bool? docil) : super(idade, docil: docil);

  void alimentar() {
    print('Se alimenta como um mamífero');
  }
}
