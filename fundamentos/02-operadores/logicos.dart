// ignore_for_file: dead_code

/*
  * Operadores Lógicos
  -----------------------------
  * (AND) - && -> As duas condições devem ser verdadeira para o resultado ser verdadeiro
  true && true   = true
  true && false  = false
  false && false = false

  * (OR) - || -> Se pelo menos uma condição for verdadeira, o resultado é verdadeiro
  true && true   = true
  true && false  = true
  false && false = false

  * (NOT) ! -> inverte o valor boleano
  (!true = false)
  (!false = true)

  * Operadores bit a bit
  (OR)  (|) -> faz a verificação bit a bit de todas as condições da experssão
  (AND) (&) -> faz a verificação bit a bit de todas as condições da experssão

  * comparação
  >= maior ou igual
  <= menor ou igual
  < menor que
  > maior que
  == igual
*/

main() {
  print('02-0 - Operadores lógicos (|| && !)');

  print('');

  //Tabela ou (||)
  print('Operador OR');
  print('--------------------------------');
  print("Operador (||) verdadeiro || verdadeiro =  ${true || true}");
  print("Operador (||) verdadeiro || falso =  ${true || false}");
  print("Operador (||) falso || falso =  ${false || false}");

  print('');

  print('Operador &&');
  print('--------------------------------');
  print("Operador (&&) verdadeiro && verdadeiro =  ${true && true}");
  print("Operador (&&) verdadeiro && falso =  ${true && false}");
  print("Operador (&&) falso && falso =  ${false && false}");
}
