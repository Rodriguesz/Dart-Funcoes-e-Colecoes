void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.

  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  print('1 - Remova os pacientes duplicados e apresente a nova lista');
  var newPessoas = pessoas.toSet();
  print(newPessoas);

  print(
      '==========================================================================================');

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  var masc = <String>[];
  var fame = <String>[];
  var pessoaAtual = <String>[];
  var newList = newPessoas.toList();
  var sexo = '';

  print(
      '2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');

  for (var i = 0; i < newList.length; i++) {
    pessoaAtual = newList[i].split('|');
    sexo = pessoaAtual[2].toLowerCase();

    try {
      if (sexo == 'masculino') {
        masc.add(pessoaAtual[0]);
      } else if (sexo == 'feminino') {
        fame.add(pessoaAtual[0]);
      }
    } catch (e) {
      print(e);
    }
  }

  print(
      'A quantidade de pessoas do sexo masculino na lista é de ${masc.length}');
  print('São eles: ');
  for (var i = 0; i < masc.length; i++) {
    print(masc[i]);
  }

  print(
      'A quantidade de pessoas do sexo feminino na lista é de ${fame.length}');
  print('São elas: ');
  for (var i = 0; i < fame.length; i++) {
    print(fame[i]);
  }

  print(
      '==========================================================================================');

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');

  var maiorIdade = <String>[];
  var idade = 0;

  for (var i = 0; i < newList.length; i++) {
    pessoaAtual = newList[i].split('|');
    idade = int.parse(pessoaAtual[1]);

    if (idade >= 18) {
      maiorIdade.add(pessoaAtual[0]);
    }
  }

  print('PESSOAS MAIORES DE IDADE:');
  for (var i = 0; i < fame.length; i++) {
    print(maiorIdade[i]);
  }

  print(
      '==========================================================================================');
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');

  var velho = 0;
  var nomeVelho = '';

  for (var i = 0; i < newList.length; i++) {
    pessoaAtual = newList[i].split('|');
    idade = int.parse(pessoaAtual[1]);
    if (idade > velho) {
      velho = idade;
      nomeVelho = pessoaAtual[0];
    }
  }

  print('A pessoa mais velha é o $nomeVelho com $velho anos.');
}
