import 'dart:math';

class Pessoa {
  String nome, sobrenome;
  int? _identidade;

  Pessoa(this.nome, this.sobrenome, {int? identidade}) {
    this._identidade = (identidade ?? Random().nextInt(99999999));
  }
  int? get identidade => _identidade;
}

class Vendedor {
  String nome;
  List<Venda> vendas;
  Vendedor(this.nome, this.vendas);
}

class Venda {
  String produto;
  double preco;
  Venda(this.produto, this.preco);
}

void main() {
  print('16.1.7 List manipulando Objeto\n');

  Pessoa p1 = Pessoa('Fernando', 'Martins', identidade: 12345678);
  Pessoa p2 = Pessoa('Leila', 'Martins', identidade: 87654321);

  List<Pessoa> pessoas = [p1, p2];
  pessoas.add(Pessoa('Clhoe', 'Martins'));

  for (var i = 0; i < pessoas.length; i++) {
    print(
        'For: ${pessoas[i].nome} ${pessoas[i].sobrenome} id: ${pessoas[i].identidade}');
  }

  print('');
  for (var pessoa in pessoas) {
    print(
        'for in: ${pessoa.nome} ${pessoa.sobrenome} id: ${pessoa.identidade}');
  }

  print('');
  pessoas.forEach(
      (e) => print('foreach: ${e.nome} ${e.sobrenome} id: ${e.identidade}'));

  print('\n16.1.8 List ordenando Objetos');

  List<Vendedor> vendedores = [];
  vendedores.add(Vendedor('Fernando', [
    Venda('IphoneX', 4199.99),
    Venda('MacBookPro', 5300.00),
    Venda('GalaxyS10', 3500.25)
  ]));

  vendedores.add(Vendedor('Leila', [
    Venda('Iphone8', 3000.00),
    Venda('GalaxyS10', 3500.25),
    Venda('IphoneX', 4199.99)
  ]));

  vendedores.add(Vendedor('Chloe', [
    Venda('IphoneX', 4199.99),
    Venda('IphoneX', 4199.99),
    Venda('GalaxyS10', 3500.25)
  ]));
  //Organizar lista de vendas pela soma total

  vendedores.sort((b, a) => (a.vendas
      .fold(
          0,
          (anterior, atual) =>
              (anterior as double) + double.parse(atual.preco.toString()))
      .compareTo(b.vendas
          .fold(0, (anterior, atual) => (anterior as double) + atual.preco))));
  vendedores.forEach((e) => print(
      'Vendedor ${e.nome} \t ${e.vendas.length} vendas \t totalizando ${e.vendas.fold(0, (anterior, atual) => (anterior as double) + double.parse(atual.preco.toString()))}'));
}
