/*
  * Construtores
  - Devem ter o mesmo nome da classe
  - São iniciados sempre que a classe é instânciada
*/

void main() {
  print("(08.0) Contrutores");
  Objeto objeto = Objeto();
  objeto.nome = "mesa";
  print("nome: ${objeto.nome}\n");

  Animal animal = Animal("Puck", "Pincher");
  print("nome: ${animal.nome} raca: ${animal.raca} idade: ${animal.idade}\n");

  Pessoa pessoa = Pessoa("Everton", 33);
  print(
      "nome: ${pessoa.nome} cor: ${pessoa.cor} idade: ${pessoa.idade} altura: ${pessoa.altura}\n");

  Usuario usuario = Usuario("verto44", "1234", nome: "Everton");
  print("user: ${usuario.user} senha: ${usuario.senha} nome: ${usuario.nome}\n");
  usuario.autenticar();

  Usuario usuario2 = Usuario.admin("verto55", "1234", nome: "Everton Jales");
  print("user: ${usuario2.user} senha: ${usuario2.senha} nome: ${usuario2.nome}\n");
  usuario2.autenticar();
}

class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  //Parâmetros opcionais
  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? "sem nome" : nome;
    this.cargo = (cargo == null) ? "usuário" : cargo;
    print("Contrutor resumido com parâmetros nomeados default ${this.toString()}");
  }

  Usuario.admin(this.user, this.senha, {this.nome}) {
    this.nome = (nome == null) ? "sem nome" : nome;
    this.cargo = "Administrador";
    print("Contrutor resumido com parâmetros nomeados default ${this.toString()}");
  }

  void autenticar() {
    var user = "verto44";
    var senha = "1234";
    this.user == user && this.senha == senha
        ? print("usuário autenticado")
        : print("Usuário não autenticado");
  }
}

class Pessoa {
  String? nome;
  String? cor;
  int? idade;
  double? altura;

  //Parâmetros opcionais
  Pessoa(this.nome, this.idade, {String? cor, this.altura = 0.0}) {
    this.cor = (cor == null) ? "indefinida" : cor;
    print("Contrutor resumido com parâmetros nomeados ${this.toString()}");
  }
}

class Animal {
  String? nome;
  String? raca;
  int? idade;

  //Parâmetros posicionados
  Animal(String? nome, [String? raca, int idade = 0]) {
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print("Contrutor sem parâmetros! ${this.toString()}");
  }
}

class Objeto {
  String? nome;
  Objeto() {
    print("Contrutor sem paratros! ${this.toString()}");
  }
}
