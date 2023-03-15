void main() {
  print('(02.0) Operadores Lógicos (&& || !');

  // Operador && somente se ambas afirmações for true o retorno sera true
  // Operador || precisa de uma afirmação verdadeira pra retornar true
  // operador ! inverte o valor boleano

  var verdadeiro = !false;
  bool falso = !true;

  print('Verdadeiro = $verdadeiro e Falso = $falso');
  print('Operador (!) !true = ${!true} !false ${!false}');

  bool teste1 = verdadeiro || verdadeiro;
  bool teste2 = verdadeiro || falso;
  bool teste3 = falso || falso;
  print('Operador (||) $teste1 - $teste2 - $teste3');
  print('Operador (&&) ${true && true} - ${true && false} - ${falso && falso}');
  bool opercao = (1 <= 2) && (3 > 2);
  print(opercao);
}
