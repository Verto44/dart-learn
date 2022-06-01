/*
  * for
  - Execução do loop em que podemos controlar o valor do indice manualmente
  
  * estrutura
  for(valor inicial; condição; incremento)

  *forin
  Usado para percorrer listas de forma crescente
  
  * estrutura
  for(valor in lista)
*/

main() {
  for (int i = 0; i <= 10; i++) {
    print("Valor do indice: $i");
  }

  String nome = 'Everton';
  for (int i = 0; i < nome.length; i++) {
    print(nome.substring(i, i + 1));
  }

  //Percorre uma lista de forma crescente
  List<String> frutas = ['Manga', 'Uva', 'Morango', 'Abacaxi'];
  for (nome in frutas) {
    print(nome);
  }
}
