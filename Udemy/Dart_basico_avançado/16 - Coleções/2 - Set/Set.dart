import 'dart:collection';

// * Set é uma coleção de elementos unicos e ordenados entre chaves. Não tem acesso a índice!

linkedHashSet() {
  print('16.2.0 LinkedHashSet == Set \n');

  //No curso o cara fala que a lista set pode conter elementos do tipo nulo
  // o que de fato pode, so se vc não especificar do que esse set é feito,
  // ou seja, deixar ele recebendo tipos de dados dynamic

  Set setInt = Set();
  print('Implementação: ${setInt.runtimeType}'); //_CompactLinkedHashSet<int>
  // setInt[0] = 0; // Não tem acesso a indice
  setInt.add(13);
  setInt.add(13);
  setInt.add(null); // pode conter null
  setInt.add(17);
  setInt.add(17);
  setInt.remove(13);
  print(setInt); // Representado por chaves

  for (var i = 0; i < setInt.length; i++) {
    // print(setInt[i]); // Não tem acesso a indice mas pode usar elementAt
    print('for: ${setInt.elementAt(i)}');
  }

  for (var elemento in setInt) {
    print('for in: $elemento');
  }

  setInt.forEach((e) => print('forEach: $e'));

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};
  print(listaA.difference(listaB));
  print(listaA.union(listaB));
  print(listaA.intersection(listaB));
  print(listaA.lookup(5));
}

// * HashSet é uma coleção de elementos unicos e desordenados

hashSet() {
  print('16.2.1 HashSet\n');
  HashSet<String> hashSet1 = HashSet(); //import 'dart:collection';
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();

  print('Implementação: ${hashSet1.runtimeType}'); //_HashSet<String>
  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');

  // hashSet1.add(null); // Isso é possivel, desde que vc n defina um tipo de dado especifico para o hashSet

  hashSet2.add(1); // Apenas listas int com 1 decimal ficara ordenada!
  hashSet2.add(2);
  hashSet2.add(3);

  hashSet3.add(11);
  hashSet3.add(22);
  hashSet3.add(33);

  print('$hashSet1 \n$hashSet2 \n$hashSet3');

  for (var i = 0; i < hashSet1.length; i++) {
    // print(hashSet1[i]); // Não tem acesso a indice mas pode usar elementAt
    print('for hashSet1: ${hashSet1.elementAt(i)}');
  }

  for (var elemento in hashSet2) {
    print('for in hashSet2: ${elemento}');
  }

  hashSet3.forEach((e) => print('forEach hashSet3: $e'));
}

// * SplayTreeSet organiza automaticamente os elementos em ordem crescente
// * Por ser uma arvore de comparações não pode conter elemento null

splayTreeSet() {
  print('16.2.3 SplayTreeSet');

  SplayTreeSet<String> splayTreeSet =
      SplayTreeSet(); //import 'dart:collection';

  print('Implementação: ${splayTreeSet.runtimeType}'); //SplayTreeSet<String>
  splayTreeSet.add('Info1');
  splayTreeSet.add('Info3');

  splayTreeSet.add('Info');
  splayTreeSet.add('Info2');
  // splayTreeSet.add(null); // Não pode conter null
  print(splayTreeSet);

  for (var i = 0; i < splayTreeSet.length; i++) {
    // print(splayTreeSet[i]); //Não tem acesso a indice mas pode usar elementAt
    print('for: ${splayTreeSet.elementAt(i)}');
  }

  for (var elemento in splayTreeSet) {
    print('for in: $elemento');
  }

  splayTreeSet.forEach((e) => print('forEach: $e'));
}

void main() {
  // linkedHashSet();
  // hashSet();
  splayTreeSet();
}
