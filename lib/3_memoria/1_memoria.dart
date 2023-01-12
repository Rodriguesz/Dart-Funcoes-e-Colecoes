void main() {
  var lista = ['Rodrigo'];
  print(lista);

  funcao(lista);
  print(lista);
}

void funcao(List<String> nomes) {
  nomes.add('Rahman');
}
