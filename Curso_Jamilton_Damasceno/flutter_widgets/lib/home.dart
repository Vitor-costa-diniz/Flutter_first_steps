import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _lista = ['Vitor', 'Charles', 'Bruno', 'Cristiane'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _lista.length,
              itemBuilder: (context, index) {
                final item = _lista[index];
                return Dismissible(
                  background: Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  //direction: DismissDirection.horizontal,
                  onDismissed: (direction) {
                    if (direction == DismissDirection.endToStart) {
                      print('Direção: endToStart');
                    } else if (direction == DismissDirection.startToEnd) {
                      print('Direção: startToEnd');
                    }

                    setState(() {
                      _lista.removeAt(index);
                    });

                    print('Direção: $direction');
                  },
                  key: Key(item),
                  child: ListTile(
                    title: Text(item),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
