/*
  * Variáveis
  - Tipos Num(int, double), String, bool, dynamic, var

  * Tipo var
  - É dinâmica até ser atribuida

  * Tipo dynamic
  - variável dynamic muda seu tipo toda vez que é atribuida

  * Tabulação em Strings
  
  - bakspace -> "\b",
  - formfeed -> "\f",
  - newline  -> "\n",
  - return   -> "\r",
  - tab      -> "\t",

  * Tipos de comentários
  - Do format comment (//)
  - Bloc comment (/* bla bla bla */)
  - Doc comment (///)
*/

main() {
  print('01.0 - Variáveis');
  //Atribuição de valores
  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;

  resultado = valorA + valorB + valorC;
  print(resultado);

  //Variáveis do mesmo tipo podem ser declaradas e inicializadas em sequência
  var salario = 1000, desconto = 250;
  var conta = salario - desconto;
  print(conta);

  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);

  //Pular uma linha no console
  print('');

  //Strings podem ser concatenadas utilizando o operador de soma
  var texto1 = '\nEverton ';
  var texto2 = "Jales";
  var texto3 = '''\ne Everton Jales''';

  var nome = texto1 + texto2 + texto3;
  print(nome);

  var verdadeiro = true;
  var falso = false;

  // $ variáveis // ${} operações
  print('Verdadeiro = ${verdadeiro}'); //interpolação
  print('Falso = $falso'); //concatenação

  // descobre o tipo da variável em tempo de execução
  print(''.runtimeType);

  //Variável constante
  const double pi = 3.14; //É atribuida em tempo de compilação

  //Formas de concatenar variáveis on Dart
  //--------------------------------------------------------
  nome = 'Everton';
  String sobrenome = 'Jales';
  int idade = 30;
  double altura = 1.73;
  bool adulto = true;

  print('Concatenar '
      'Strings '
      'é simples assim.');

  print('\nNome: ' +
      "$nome\nQtd de letras: ${nome.length}" +
      '''\nSobrenome: $sobrenome\nQtd de letras: ${sobrenome.length}\n''');

  //Aspas tripla não é necessário colocar um + ou ' no final para juntar com a proxima linha de código
  print('''Idade : $idade
  altura: $altura
  adulto: $adulto
  \npi: $pi\n''');

  //Toda vez que o um valor novo é atribuído o tipo da variável muda
  dynamic variavel = 2.0; //double
  variavel = 2; //int
  variavel = 'dois'; //String
  variavel = true; //bool
  print(variavel);
}
