import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];
  void _carregarItens() {
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item['titulo'] = 'Titulo $i Lorem ipsum dolor sit amet.';
      item['descricao'] = 'Descrição $i ipsum dolor sit amet';
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: ((context, index) {
            //Map<String, dynamic> item = _itens[index];
            //print('Item: ${_itens[index]['titulo']}');
            return ListTile(
              title: Text(_itens[index]['titulo']),
              subtitle: Text(_itens[index]['descricao']),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(_itens[index]['titulo']),
                        titlePadding: EdgeInsets.all(20),
                        titleTextStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.orange,
                        ),
                        content: Text(_itens[index]['descricao']),
                        //backgroundColor: Colors.orange,
                        actions: [
                          TextButton(
                            onPressed: () {
                              print('Selecionado sim');
                              Navigator.pop(context);
                            },
                            child: Text('Sim'),
                          ),
                          TextButton(
                            onPressed: () {
                              print('Selecionado sim');
                              Navigator.pop(context);
                            },
                            child: Text('Não'),
                          ),
                        ],
                      );
                    });
              },
              //onLongPress: () {},
            );
          }),
        ),
      ),
    );
  }
}
