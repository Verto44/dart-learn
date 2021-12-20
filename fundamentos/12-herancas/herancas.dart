/*

  * Regras
  - Uma classe pode ter somente uma herança

  * Construtores
  - Devem obedecer a ordem dos parametros
  - Paramentros default devem ser nomeados ou posicionados
  - Tratamento e tipagem de parametros deve ser feito na classe herdeira

 */

import 'cao.dart';

void main() {
  print('12.0 - Heranças');

  Cao cao = Cao('Puck', 'Pinscher', 'Macho', idade: '6 anos', docil: false);

  print('nome: ${cao.nome} raça: ${cao.raca} sexo: ${cao.sexo}'
      ' idade: ${cao.idade} docil: ${cao.docil},');

  //Chamar métodos encadeados
  cao
    ..dormir()
    ..alimentar()
    ..acao();
}
