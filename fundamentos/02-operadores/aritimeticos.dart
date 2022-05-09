/*
  * Operadores aritiméticos
  1) +  adição
  2) -  subtração
  3) *  multiplicação
  4) /  divisão
  5) ~/ divisão com resultado inteiro
  6) %  resto da divisão

  * Incremento
  (++ --)

  * Assignação
  1) A ??= B -> A recebe o valor de B somente se o valor de A for nulo.
  2) X = A ?? B -> X recebe o valor de A somente se A não for nulo, caso contrário, X recebe o valor de B 

*/

main() {
  print('02-0 - Operadores relacionais');

  print('');

  // * Variáveis para teste aritiméticos
  int a = 8;
  int b = 4;

  print('Operadores relacionais');
  print('--------------------------------');
  print("$a  +   $b =  ${a + b}");
  print("$a  -   $b =  ${a - b}");
  print("$a  *   $b =  ${a * b}");
  print("$a  /   $b =  ${a / b}");
  print("$a  ~/  $b =  ${a ~/ b}");
  print("$a  %   $b =  ${a % b}");

  print('');

  // * Variáveis para teste de pré-incremento
  int x = 7;
  int y = 3;

  print('Operadores de incremento');
  print('--------------------------------');
  print('Incrementa antes de fazer a atribuição');
  print("(x = ++y) -> x = ${x = ++y}");
  print("valor de x na próxima linha: $x");

  print('');

  // * Variáveis para teste de pós-incremento
  x = 7;
  y = 3;

  print('Faz a atribuição e depois incrementa');
  print("(x = y++) -> x = ${x = y++}");
  print("valor de x na próxima linha: $x");

  // * Variáveis para teste de assignação
  int? f = null;
  int e = 2;

  print('');

  print('Operadores de assignação');
  print('--------------------------------');
  print('Expressão: f ??= e -> f');
  print('$f ??= $e -> f = ${f ??= e}');

  // * Impar ou Par
  int numero = 3;

  print('');

  print('Impar ou par');
  print('--------------------------------');
  print('O valor $numero é par? ${numero & 2 == 0}');
  print('O valor $numero é impar? ${numero & 2 != 0}');
  print('--------------------------------');
}
