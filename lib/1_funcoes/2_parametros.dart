void main() {
  //? Parametros Obrigatórios por default
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');

  //? Parametros nomeados
  // Parametros nomeado são nullables por default
  // Se vc não passar os parâmetros, eles serão nulos
  // Parametros nomeados podem ser promovidos para non-null com checagem de null
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero2: 10.2, numero1: 10.2)}');
  print(somaDoubles());

  somaDoublesObrigatorios(
      numero1: 10.2, numero2: 10.2); //required obriga a passar um valor
  somaDoublesObrigatorios2(
      numero1: null,
      numero2:
          10.2); //required obriga a passar um valor porem agora o numero1 pode ser nulo

  somaDoublesDefault(); //valor das variaveis é 0 por default, então não é obrigatorio passar os parametros
  somaDoublesDefault(
      numero1:
          10.2); //valor das variaveis é 0 por default, então não é obrigatorio passar os parametros, (passei só 1 nesse caso)

  //? Parametro Opcional
  // Nâo é necessário passar os parametros mas se passar, deve passar em ordem
  somaIntOptional();
  somaIntOptional(1);
  somaIntOptional(1, 2);

  parametrosNormaisComNomeados(1, nome: 'Leonardo', idade: 21);
  parametrosNormaisComOpcionais(1);
  parametrosNormaisComOpcionais(1, 'leonarodo');
  parametrosNormaisComOpcionais(1, 'leonarodo', 21);
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

double somaDoubles({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }

  return 0.0;
}

double somaDoublesObrigatorios(
    {required double numero1, required double numero2}) {
  return numero1 + numero2;
}

double somaDoublesObrigatorios2(
    {required double? numero1, required double numero2}) {
  numero1 ??= 0; //or operator (numero1 OU 0)
  // if (numero1 == null) {
  //   numero1 = 0;
  // }
  return numero1 + numero2;
}

double somaDoublesDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}

int somaIntOptional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}

void parametrosNormaisComOpcionais(int numero, [String? nome, int? idade]) {}
