/*
  * Condicional if else
  
  A condicional if  é uma estrutura condicional que executa a afirmação,
  dentro do bloco, se determinada condição for verdadeira. Se for falsa, 
  executa as afirmações dentro de else.
*/

main() {
  int idade = 5;

  if (idade >= 18) {
    print('Condição verdadeira');
  } else {
    print('Condição falsa');
  }

  /*
    O if else sem chaves só considera a primeira linha
  */
  if (idade >= 18)
    print('Condição verdadeira');
  else
    print('Condição falsa');

  /*
    if else aninhados
  */
  if (idade >= 18) {
    print('Condição verdadeira 1');
  } else if (idade <= 10 && idade >= 6) {
    print('Condição verdadeira 2');
  } else {
    print('Condição falsa');
  }
}
