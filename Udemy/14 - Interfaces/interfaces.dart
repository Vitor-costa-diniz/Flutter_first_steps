import 'Candidato.dart';

void main() {
  print('14.0 - Interfaces');

  var lula = Candidato('Lula', ideologia: 'esquerda', partido: 'PT');
  lula
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Eae porras'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
