/*

  * Conceito
  - É uma coleção dinâmica e ordenada de elementos entre colchetes []
  - forEach: Aplica a função anônima a cada elemento da coleção
  - Todo array é um List<?>

  * Expand
  - Cria uma nova lista expandindo ou concatenando os elementos

  * Map:
  - Transforma/seleciona os elementos de uma coleção criando uma nova do mesmo tamanho

 */

import 'dart:math';

void main() {
  //listForEach();
  //listExpand();
  listMap();
}

void listForEach() {
  print('16.1.0 - List ForEach\n');

  var array = [0, 2.5, 5, 7.25, 10];
  array.forEach((element) => print("foreach: $element"));

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleanas = [true, false, !true, !false];
  List<String> frutas = ["Morango", "Banana", "Limão"];

  //Verifica o tipo do objeto em tempo de execução
  print("\nImplementação: ${frutas.runtimeType}");

  //Verifica valor em uma posisção da lista
  print("\Boleanas[3]: ${boleanas[3] ? 'Verdadeiro' : 'Falso'}");

  //Insere um novo elemento na lista na posição 0
  frutas.insert(0, "Abacaxi");

  //Adiciona um elemento na lista
  frutas.add("Laranja");

  //Invoca uma função anônima para cada elemento da lista
  frutas.forEach((element) => print("foreach: $element"));

  // Remove o ultimo elemento da lista
  frutas.removeLast();

  // Remove todos os elementos que atendem a condição
  frutas.removeWhere((element) => element == "Banana");

  //Recupera o elemento no indice especificado
  print(frutas.elementAt(2));

  //Verifica se o dado elemento pertence a lista - Case sensitive
  print(frutas.contains("abacaxi"));

  //.. significa operador em cascata
  List<num> numeros = List.from(inteiros)
    ..addAll(doubles) // adiciona todos os elemento de uma lista
    ..shuffle() //embaralha a lista
    ..sort(); // ordena a lista

  print("\n$numeros");

  //Gera uma lista de tamanho 2 com elementos null
  List<dynamic> listaPreenchida = List.filled(2, null);

  //Pega os 3 primeiros elementos da lista e pula o primeiro
  listaPreenchida = numeros.take(3).skip(1).toList();
  print("Lista $listaPreenchida");

  List<dynamic> listaGerada = List.generate(2, (index) => "Nome: $index");
  print("Lista $listaGerada");

  List<double> listaPrecos = List.generate(
      5, (index) => double.parse(((index + 1) * Random().nextDouble()).toStringAsFixed(2)));
  print("Lista $listaPrecos");
}

void listExpand() {
  print('\n16.1.1 - List Expand\n');

  var lista = [
    [1, 2],
    [3, 4]
  ];

  //Concatenando listas
  List<dynamic> listaFlat = lista.expand((element) => element).toList();
  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e, e]).toList();
  print("expand: ${lista.expand((element) => element)}");

  print("listaFlat: $listaFlat");
  print("listaDuplicada: $listaDuplicada");

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<num> inteiros = [1, 5, 10];
  List<num> doubles = [2.5, 7.25];

  // ignore: unused_local_variable
  List<dynamic> listaDinamica = [];

  //Outra forma de concatenar listas
  print(listaDinamica = [1, 3, 4] + [2, 7]);
  print(listaDinamica = []
    ..addAll(inteiros)
    ..addAll(doubles));

  //... é o operador spread (espalhar), ele insere o conteúdo de uma lista dentro de outra
  print(listaDinamica = [0, ...inteiros, 15]);

  print(listaDinamica = [...[], ...inteiros, if (doubles is List<double>) ...doubles]);

  print(listaDinamica = [...[], for (var numero in numeros) numero]);
}

void listMap() {
  print('16.1.2 - List Map\n');

  List<String> frutas = ["Morango", "Banana", "tomate"];
  List<String> frutasMapeadas = frutas.map((e) => "$e é uma fruta").toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];

  //Listas do tipo int com operações os elementos devem ser setados com int
  var incrementar = (int e) => ++e;
  final dobro = (int e) => e * 2;
  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);

  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (double e) => e * 3;
  final moeda = (double e) => "R\$ ${e.toStringAsFixed(2).replaceFirst(".", ",")}";
  porcentagem(double desconto) => (double valor) => desconto * valor;
  List<dynamic> doublesMapeados = doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();
  print(doublesMapeados);
}
