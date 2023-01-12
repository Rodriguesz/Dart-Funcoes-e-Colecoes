void main() {
  var cor = Cores.laranja;
  var azul = 'azul';

  const corLaranja = 'laranja';
  print(Cores.azul.name);

  //? acessar a cor laranja do enum
  var corLaranja2 = Cores.values.byName(corLaranja);
  print(corLaranja2);

  //? transformar o enum em um map com a chave sendo o nome dos atributos dentro do enum
  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  //? Recuperando os valores do enum transformado em mapa
  //? A vantagem é que se o valor não existir, ele retorna null e não erro
  var corLaranjaPeloMap = coresNameMap[corLaranja];
  print(corLaranjaPeloMap);
}

enum Cores {
  azul,
  vermelhor,
  laranja,
  verde,
  preto;
}
