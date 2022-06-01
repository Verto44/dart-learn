import 'dart:io';

/*
  * Instruções
  - Para executar esse código, você deve rodar pelo terminal com o seguinte comando
  
    #comando para compilar o código
    dart dart_io.dart

    obs: Lembre de navegar até a pasta em que o código se encontra
    cd <nome_da_pasta> -> Navega para a pasta
    cd.. -> volta uma pasta
*/

main() {
  stdout.write("Escreva seu nome: ");
  String? name = stdin.readLineSync();
  print("Seu nome é $name");

  stdout.write("Escreva sua idade: ");
  int? idade = int.parse(stdin.readLineSync() ?? '0');
  print("Sua idade é $idade");

  List<String> input = stdin.readLineSync()!.split(" ");
  int start = int.parse(input[0]);
  int end = int.parse(input[1]);
  print("Início: $start");
  print("Final: $end");
}
