/*
  * Condicional switch

  A condicional switch avalia uma expressão, combinando o valor da expressão para
  um cláusula case, e executa as instruções  associadas ao case.
*/

enum Operation { add, sub, div, mult }

main() {
  //Condição
  Operation op = Operation.sub;

  //Valores para teste
  int a = 10;
  int b = 2;

  //No dart é obrigatório colocar o break
  switch (op) {
    case Operation.add:
      print('${a + b}');
      break;
    case Operation.sub:
      print('${a - b}');
      break;
    case Operation.div:
      print('${a / b}');
      break;
    case Operation.mult:
      print('${a * b}');
      break;
    default:
      print('Nenhuma condição encontrada');
  }
}
