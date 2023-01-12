void main() {
  var numeroLista = <int?>[];
  numeroLista.add(1);
  numeroLista.add(2);
  numeroLista.add(3);
  numeroLista.add(null);
  numeroLista.add(1);
  numeroLista.add(3);

  print(numeroLista);

  var numeroSet = <int?>{};
  numeroSet.add(1);
  numeroSet.add(2);
  numeroSet.add(3);
  numeroSet.add(null);
  numeroSet.add(1);
  numeroSet.add(3);

  //?toSet
  print('.toSet');
  //transforma numeroLista em set, onde não se pode conter valores duplicados
  print(numeroLista.toSet());

  //?difference
  var numeros1 = {1, 2, 3, 4, 5};
  var numeros2 = {1, 2, 3, 7};

  print('.difference()');
  //mostra os numeros de numeros1 não tem no numeros2
  print(numeros1.difference(numeros2));

  //?.union
  print('.union()');
  //vai juntar os dois sets sem duplicar os valores iguais
  print(numeros1.union(numeros2));

  //?intersection
  print('.intersection');
  //mostra os valores que são repetidos nas duas listas
  print(numeros1.intersection(numeros2));

  //?lookup
  print('.lookup');
  //procura se existe na lista o valor passado por parâmetro (2 no caso)
  print(numeros1.lookup(2));
}
