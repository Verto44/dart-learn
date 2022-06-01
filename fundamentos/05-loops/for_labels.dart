/*
  * for com labels (rótulos) 
  - Faz a nomeação dos loops for

   * break
   Encerra o loop

   * continue
   Continua o loop: faz a chamada do loop novamente
  
*/

main() {
  loopExterno:
  for (int i = 0; i < 3; i++) {
    //print("LoopExterno: i: $i");

    loopInterno:
    for (int j = 0; j <= 3; j++) {
      print('LoopInterno: i: $i j: $j');
      if (j > 2) break;
      if (i == 1) break loopInterno;
      if (i == 1) break loopExterno;
      //print('loopComplero');
    }
  }

  print("\n################################");

  //Imprimir todos os números pares
  print('Números pares');
  for (int i = 0; i <= 20; i++) {
    if (i % 2 != 0) {
      continue;
    }
    print(i.toString());
  }
}
