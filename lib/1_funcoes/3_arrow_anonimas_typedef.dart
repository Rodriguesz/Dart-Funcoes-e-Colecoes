void main() {
  // Usando Funções arrow
  print(somaInteiros(10, 10));

  //Usando funções anônimas
  var funcaoQualquer = () {
    print('Chamou a função da variavel');
    return 200;
  };

  print(funcaoQualquer());

  print('Iniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nome Vazio');
    } else {
      print(nome);
    }
  });
  print('Finalizando a chamada');

  // Usando função com typedef
  chamarUmaFuncaoDeUmParametro2((nome) => null);

  crieiApenasParaTeste((nome) => null);
}

// função arrow
int somaInteiros(int numero1, int numero2) => numero1 + numero2;

//função anonima
void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome) {
  print('Finalizando a funçao chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  var nomeCompleto = 'Leonardo Rodrigues';

  funcaoQueRecebeONome(nomeCompleto);
}

// função com typedef
void chamarUmaFuncaoDeUmParametro2(funcaoQueRecebeNome funcaoQueRecebeONome) {
  print('Finalizando a funçao chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  var nomeCompleto = 'Leonardo Rodrigues';

  funcaoQueRecebeONome(nomeCompleto);
}

String crieiApenasParaTeste(funcaoQueRecebeNome funcaoDoNome) {
  String nada = 'Nada';
  return nada;
}

typedef funcaoQueRecebeNome = Function(String nome);
