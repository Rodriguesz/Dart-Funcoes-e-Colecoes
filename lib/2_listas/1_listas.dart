void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(print);
  numeros.forEach(printPersonalizado);

  //? Expand

  var lista = [
    //array bidimencional
    [1, 2],
    [3, 4]
  ];

  /*var listaNova = [
    ...lista[0],
    ...lista[1]
  ];*/

  var listaNova = lista
      .expand((numeros) => numeros)
      .toList(); //junta as duas listas dentro da lista
  print(listaNova);

  //? Any
  final listaBusca = ['Rodrigo', 'João', 'José'];

  if (listaBusca.any((nome) => nome == 'João')) {
    //varre a lista a procura do João
    print('Tem João');
  } else {
    print('Não tem João');
  }

  //? every

  final listaBusca2 = ['Rodrigo', 'João', 'José'];

  if (listaBusca2.every((nome) => nome.contains('J'))) {
    //procura se existe a letra 'J' em todos os itens da lista
    print('Todos os nomes tem a letra J');
  } else {
    print('Nem todos os nomes tem a letra J');
  }

  //? sort
  print('.sort');
  var listaParaOrdenacao = [99, 100, 70, 2, 560, 300, 25];

  listaParaOrdenacao.sort(); //organiza os itens da lista em ordem crescente
  print(listaParaOrdenacao);

  var listaNomesParaOrdenacao = ['Rodrigo', 'João', 'José'];

  listaNomesParaOrdenacao.sort();
  print(listaNomesParaOrdenacao); //organiza os itens em ordem alfabetica

  var listaPacientes = [
    'Leonardo Rodriges|21',
    'Rodrigo Rahman|35',
    'Pessoa qualquer|54'
  ];

  //o sort pode receber uma função de comparação
  listaPacientes.sort((paciente1, paciente2) {
    var pacienteDados1 = paciente1.split('|');
    var pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    //logica para ordenar os pacientes do mais novo para o o mais velho
    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });

  print(listaPacientes);

  //? CompareTo

  print('.sort com compareTo');
  var listaPacientes2 = [
    'Leonardo Rodriges|21',
    'Rodrigo Rahman|35',
    'Pessoa qualquer|54'
  ];

  //o sort pode receber uma função de comparação
  listaPacientes2.sort((paciente1, paciente2) {
    var pacienteDados1 = paciente1.split('|');
    var pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    //logica para ordenar os pacientes do mais novo para o o mais velho
    return idadePaciente1.compareTo(idadePaciente2);
  });

  print(listaPacientes2);
}

void printPersonalizado(Object valor) {
  print(valor);
}
