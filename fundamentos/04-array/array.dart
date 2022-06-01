/*
  * Array
  - é uma lista dinâmica e ordenada de elementos entre chaves
*/

main() {
  //Podem ser de um único tipo
  var arrayString = ['Everton', 'Jales', 'de', 'Oliveira'];
  var arrayNum = [1, 1.2, 7, 4];
  var arrayBool = [!true, false, true];

  print(arrayString);
  print(arrayNum);
  print(arrayBool);

  //Podem ser de tipos variados
  var arrayDinamica = ['Everton', [], 1.2, true, 8];
  print(arrayDinamica);

  //Funções
  //----------------------------------------------

  //Adicionar elemento no final da array
  arrayString.add('Novo elemento');
  print(arrayString);

  //Adicionar elemento no final da array
  arrayString.insert(0, 'adicionado no início');
  print(arrayString);

  //Atualizar elemento da array
  arrayString[3] = 'atualizado';
  print(arrayString);

  //Remover elemento da array
  arrayString.removeAt(3);
  print(arrayString);

  //Remover um range de index
  arrayString.removeRange(0, 2);
  print(arrayString);

  //Remove todos os elementos
  arrayBool.clear();
  print(arrayBool);

  //Retorna tamanho da array
  print(arrayBool.length);

  //Ordena a array
  arrayNum.sort();
  print(arrayNum);

  var arrayTexto = ['a', 'c', 'd', 'b'];
  //Ordena em ordem crescente
  arrayTexto.sort((a, b) => a.compareTo(b));
  print(arrayTexto);

  //Ordena em ordem decrescente
  arrayTexto.sort((b, a) => a.compareTo(b));
  print(arrayTexto);
}
