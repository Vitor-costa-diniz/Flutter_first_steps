/*

  * Conceito
  - Mixin permite implementar metodos e atributos de outras classe

  *Regras 
  - Devem ser implementados a partir de uma classe concreta ou abstrata
  - Podem ser implementados a partir de uma classe concreta de uma cclasse mixin
  - Não pode implementar uma classe que  estenda e extender de uma classe mixin
  - Pode implementar mais de um mixin, e não é obrigatório usar todos métodos e atributos
  - As classes que possuem metodos iguais serão sobrescritas em ordem ate a classe herdeira

  * On
  - É obriatório declarar sua classe como mixin
  - Restringi o uso do mixin as classes que estendem ou implementam a classe declarada.
*/

// Classe Abstrata

abstract class Artista {
  void acao() {
    print('Performista...');
  }
}

// Mixins

mixin Cantor on Artista {
  void acao() {
    print('Cantar');
  }
}

class Dancarino {
  void acao() {
    print('Dança');
  }
}

//Interfaces

abstract class Acao {
  void executar();
}

// Classes Concretas

class Musico extends Artista with Dancarino, Cantor implements Acao {
  void acao() =>
      print('Compoe'); // Comente para ver a hierarquia de sobrescritas!

  @override
  void executar() {
    super.acao();
    acao();
  }
}

// A classe MC não pode cantar porque nao extends de Artista

class MC with Dancarino implements Acao {
  void acao() => print(
      'Mixa .. bota o batidão'); // Comente para ver a hierarquia de sobrescritas!

  @override
  void executar() {
    super.acao();
    acao();
  }
}

void main() {
  print('15.1 Mixin On\n');

  Musico musico = Musico();
  musico.executar();

  print('');

  MC mc = MC();
  mc.executar(); //  bota o batidão
}
