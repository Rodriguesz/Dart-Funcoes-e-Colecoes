void main() {
  String idade = '38 anos';
  String? nome;

  try {
    // print(int.parse(idade));
    // nome!.toLowerCase();

    var idadeParse = int.parse(idade);

    if (idadeParse == 38) {
      throw Exception(); //jogue uma excessão
    }
  } on FormatException catch (e, s) {
    //? O 'e' vem de erro e o 's' vem de stack trace
    //? O s da uma melhor rastreabilidade de onde se encotra o erro
    //? erro no parse retorna um FormatException
    print('Erro ao converter idade');
    print(s);
  } on TypeError {
    //? O catch é opcional. Caso não va usar as variaveis, não precisa utilizar ele na excessão especifica
    //? Não sei o que retornaria isso
    print('Erro ao digitar');
  } catch (e) {
    //? Pega qualquer erro não especificado
    //? deve sempre ficar abaixo das exceptions especificas
    print('erro ao executar o programa');
  } finally {
    //? sempre será executado independente de dar algum erro ou não
    print('finally');
  }
}
