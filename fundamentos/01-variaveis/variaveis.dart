main() {
  print('01.0 Variáveis');

  // var é dinâmica até ser atribuida
  // tipos de comentários
  // Do format comment (//)
  // bloc comment (/* bla bla bla */)
  // Doc comment (///)

  //Tabulação em Strings
  /*
    "bakspace" : "\b",
    "formfeed" : "\f",
    "newline" : "\n",
    "return" : "\r",
    "tab" : "\t",
  */

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;

  resultado = valorA + valorB + valorC;
  print(resultado);

  var salario = 1000, desconto = 250;
  var conta = salario - desconto;
  print(conta);
  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);

  print('');

  print('Concatenar '
      'Strings '
      'é simples assim.');

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
  print(''.runtimeType); // descobre o tipo da variável em tempo de execução
  const double pi = 3.14;
  nome = 'Everton';
  String sobrenome = 'Jales';
  int idade = 30;
  double altura = 1.73;
  bool adulto = true;

  print('\nNome: ' +
      "$nome\nQtd de letras: ${nome.length}" +
      '''\nSobrenome: $sobrenome\nQtd de letras: ${sobrenome.length}\n''');

  print('''Idade : $idade
  altura: $altura
  adulto: $adulto
  \npi: $pi\n''');

  //variável dynamic muda seu tipo toda vez q é atribuida
  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel);
}
