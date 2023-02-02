import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: () {
        close(context, '1');
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query);
    //print('Resultado: Pesquisa realizada');
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //print('Resultado: Digitado $query');
    /*
    List<String> lista = [];

    if (query.isNotEmpty) {
      lista = ['Casa', 'Lava']
          .where((texto) => texto.toLowerCase().startsWith(query.toLowerCase()))
          .toList();
      return ListView.builder(
          itemCount: lista.length,
          itemBuilder: ((context, index) {
            return ListTile(
              onTap: (() {
                close(context, lista[index]);
              }),
              title: Text(lista[index]),
            );
          }));
    } else {
      return Center(
        child: Text('Nenhum resultado para a pesquisa'),
      );
    }
    */
    return Container();
  }
}
