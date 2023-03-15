import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
      ),
      body: Text('Conteudo'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floatingActionButton: FloatingActionButton(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 6,
        icon: Icon(Icons.add_shopping_cart),
        label: Text('Adicionar'),
        /*shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        */
        onPressed: () {},
        //mini: true,
        /*child: Icon(Icons.add),
        onPressed: () {
          print('Resultado: Botão pressionado!');
        },*/
      ),
      bottomNavigationBar: BottomAppBar(
        //shape: CircularNotchedRectangle(),
        child: Row(children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ]),
      ),
    );
  }
}
