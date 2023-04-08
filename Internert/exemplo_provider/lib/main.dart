import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Pessoa(nome: 'Pedro', idade: 25),
      child: MyApp(),
    ),
  );
}

class Pessoa with ChangeNotifier {
  String? nome = 'Daves';
  int? idade = 35;

  Pessoa({this.nome, this.idade});
  void incrementaIdade() {
    idade = idade! + 1;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer<Pessoa>(
        builder: (context, pessoa, child) => Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Exemplo Provider')),
          ),
          body: Center(
            child: Text(
              ' ${pessoa.nome} tem ${pessoa.idade} anos de idade',
              style: TextStyle(fontSize: 30),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => pessoa.incrementaIdade(),
          ),
        ),
      ),
    );
  }
}
