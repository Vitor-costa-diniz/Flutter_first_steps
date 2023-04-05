/*

  * Conceito
  - Mixin permite implementar metodos e atributos de outras classes

  * Regras
  - Devem ser implementados antes das interfaces
  - Podem ser implementados a partir de uma classe concreta mixin
  - Não pode implementar uma classe que estenda e extender uma classe mixin
  - Pode implementar mais de um mixin, e nao é obrigatório usar todos metodos e atributos
  - As classes que possuem metodos iguais serao sobrescritas em ordem ate a classe herdeira

  * On
  - É obrigatório declarar sua classe como mixin.
  - Restringi o uso do mixin as classes que estendam ou implementam a classe declarada.


*/

//Classe abstrata
abstract class Cidadao {
  String nome;

  Cidadao(this.nome);

  void objetivosPessoais();

  void direitosDeveres() {
    print('Todo cidadão tem direitos e deveres');
  }
}

//Interfaces

abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void ideologiaPolitica();
}

class Postagem {
  String? postagem;

  void escreverPostagem() {
    print('');
  }
}

//Mixins

mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoContas();
}

abstract class Conta {
  double? _saldo, salario = 33000;

  get saldo => this._saldo;
  set depositar(double valor) => this._saldo = valor;

  bool declaracaoRenda() => _saldo! / 12 < salario!;
}

// Classe Concreta

class Candidato extends Cidadao
    with Elegivel, Conta
    implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(String nome, {this.ideologia, this.partido}) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  //Interfaces

  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

  @override
  String? ideologia;
  String? partido;

  @override
  void ideologiaPolitica() {
    print(
        '$nome é candidato com ideologia de $ideologia pelo partido $partido');
  }

  // mixins
  @override
  void prestacaoContas() {
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print(
          'Candidato $nome passou na prestação de contas\nAutorizado a concorrer nas eleições 2022');
    } else {
      print(
          'Candidato $nome foi barrado na prestação de contas\nSaldo $saldo excede a renda declarada para Presidente!');
    }
  }
}

void main() {
  print('15.0 - Mixin\n');

  var lula = Candidato('Lula', ideologia: 'esquerda', partido: 'PT');
  lula
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Eae porras'
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..saldo
    ..depositar = 396000
    ..prestacaoContas();
}
