import 'mamifero.dart';

class Cao extends Mamifero {
  String nome;
  String raca;

  Cao(this.nome, this.raca, String? sexo, {String? idade, bool? docil = false})
      : super(sexo, idade, docil) {
    this.idade = idade ?? 'Indefinida';
    this.sexo = sexo ?? 'Indefinido';
  }

  void acao() {
    print('Late como um cão');
  }
}
