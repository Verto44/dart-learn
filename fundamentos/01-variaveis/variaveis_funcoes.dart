/*
  * Variáveis
  - Tipos Num(int, double), String, bool, dynamic, var

  * Tipo var
  - É dinâmica até ser atribuida

  * Tipo dynamic
  - variável dynamic muda seu tipo toda vez que é atribuida
*/

void main() {
  print('01.1 - Variáveis');

  //Principais funções para a variável num
  num pi = 3.14;
  print(pi.floor()); //Arredonda para baixo
  print(pi.round()); //Arredonda para o inteiro mais próximo
  print(pi.ceil()); //Arredonda para cima

  /* 
    * Clamp - Define um valor mínimo e máximo para a variável
    - se o valor da variável for abaixo do mínimo, será retornado o mínimo
    - se o valor for maior que o máximo, será retornado o máximo
    - se estiver dentro do intervalo, será retornado o valor atual da variável
  */
  print(pi.clamp(3, 3.1));

  /* 
    * Retorno
    -1 se for inferior ao número comparado
    0 se for igual
    1 se for superior ao número comparado
  */
  print(pi.compareTo(3));

  //Retorna o resto da divisão pelo valor passado
  print(pi.remainder(3));

  print(pi.toInt()); //Converte para inteiro
  print(pi.toDouble()); //Converte para double
  print(pi.toString()); //Converte para String
  print(pi.toStringAsFixed(1)); //Converte para String com x casas decimais
  print(pi.truncate()); //Remove as casas decimais
  print(pi.isNegative); //Testa se o valor é negativo
  print(pi.isInfinite); //Testa se o valor é infinito
  print(pi.abs()); //Retorna o módulo do valor
  print(12.gcd(16)); //Máximo divisor comum

  //Completa a String para direita ou esquerda com o valor passado no tamanho definido.
  print('1'.padLeft(2, '0'));
  print('1'.padRight(3, '0'));

  //Principais funções do tipo String
  String nome = 'Everton';
  String sobrenome = '\t Jales de Oliveira';
  print(nome.toLowerCase()); //Passa o texto para minúsculo
  print(nome.toUpperCase()); //Passa o texto para maiúsculo
  print(sobrenome.trim()); //Remove os espaços em branco do início e do final
  print(sobrenome.split(' ')); //Separa em lista pelo caractere passado como parâmetro
  print(nome.split('')); //Se passar vazio como parâmetro, todos os caracteres serão separados em uma lista
  print(nome.substring(1, 5)); //Retorna uma substring dentro do intervalo de index passado no parâmetro
  print(nome.startsWith('E')); //Verifica se a String começa com o valor passado no parâmetro
  print(nome.startsWith('ver', 1)); //Verifica se o index passado começa com a String passada no parâmetro
  print(nome.replaceAll('e', 'a')); //Troca todas as ocorrências do primeiro parâmetro pelo segundo
  print(nome.replaceFirst('Ev', 'Cr')); //A primeira ocorrência do valor 1 é trocada pelo valor 2
  print(nome.replaceFirst('E', 'I', 0)); //Se no index dado tiver o valor 1, troca pelo valor 2
  print(nome.replaceRange(1, 4, '')); //Substitui os valores no range pelo valor da String passado
  print(sobrenome.trim().split(' '));
  print(nome.contains('e')); //Verifica se a String contem o valor passado
  print(nome.contains('e', 0)); //verifica sé o index é igual ao valor passado
  print(nome.indexOf('E')); //Retorna o index da primeira ocorrencia. (Case sensitive)
  print(nome.length); //Retorna o tamanaho da String
  print(nome.endsWith('n')); //Verifica se a String termina com o valor passado
  print(sobrenome.lastIndexOf('e')); //Retorna o ultimo index com o valor passado
  print('');

  /* 
    * Retorno
    -1 diferente
     0 se for igual
     1 se possui
  */
  print(nome.compareTo('Everton'));

  print(nome.isEmpty); //Verifica se é vazio
  print(nome.isNotEmpty); //Verifica se não é vazio

  //Conversões String para num(int, double)
  print(double.parse('12.3'));
  print(int.parse('12'));

  // ignore: unnecessary_type_check
  print(nome is String); //verifica se é uma String
  num numero = 3.14;
  print(numero is double); //Verifica se é um double
  print(numero is! double); //Verifica se não é um double
}
