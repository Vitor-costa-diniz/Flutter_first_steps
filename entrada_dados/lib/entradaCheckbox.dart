import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool? _comidaBrasileira = false;
  bool? _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados'),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text('Comida brasileira'),
              subtitle: Text('A melhor comida do mundo'),
              //activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaBrasileira,
              onChanged: (bool? valor) {
                setState(() {
                  _comidaBrasileira = valor;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Comida Mexica'),
              subtitle: Text('A melhor comida do mundo'),
              //activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
              onChanged: (bool? valor) {
                setState(() {
                  _comidaMexicana = valor;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print(
                  'Comida Brasileira: $_comidaBrasileira '
                  'Comida Mexicana: $_comidaMexicana',
                );
              },
              child: Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),

            /*
            Text('Comida Brasileira'),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool? valor) {
                setState(() {
                  _estaSelecionado = valor;
                });
              },
            ),*/
          ],
        ),
      ),
    );
  }
}
