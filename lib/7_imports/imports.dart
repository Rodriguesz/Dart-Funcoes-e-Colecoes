import 'calculos/somas.dart' as soma;
import 'novos_calculos/somas.dart' as nova_soma;

//import 'package:func_and_collections/7_imports/calculos/somas.dart'; //import passando pela raiz do projeto
void main() {
  var totalDoubles = soma.somaDoubles(1.2, 2.3);

  var totalInteiros = nova_soma.somaInteiros(2, 3);

  print('total doubles: $totalDoubles');

  print('total ints: $totalInteiros');
}
