void main() {
  final valorCalculado = somaInteiros(10, 5);
  print('A soma de dois inteiros é $valorCalculado');
}

int somaInteiros(int numero1, int numero2) {
  print('Executando a soma dos inteiros ($numero1, $numero2)');
  return numero1 + numero2;
}
