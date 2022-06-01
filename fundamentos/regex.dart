main() {
  print("Teste 1" + isEmail('verto.jales@gmail.com').toString());
  print("Teste 2" + isEmail('verto.jales@gmail.com.br').toString());
  print("Teste 3" + isEmail('verto.jales@gmail').toString());
  print("Teste 4" + isEmail('verto.jales@').toString());
  print("Teste 4" + isEmail('verto.jales@gmail.com teste').toString());
}

//Testa se o email é válido
bool isEmail(String email) {
  RegExp exp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  return exp.hasMatch(email);
}
