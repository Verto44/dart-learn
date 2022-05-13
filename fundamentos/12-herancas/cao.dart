import 'mamifero.dart';

class Cao extends Mamifero {
  String nome;
  String raca;

  Cao(this.nome, this.raca, super.sexo, super.idade, {super.docil = false}) {
    this.idade = idade ?? 'Indefinida';
    this.sexo = sexo ?? 'Indefinido';
  }

  void acao() {
    print('Late como um cão');
  }
}
