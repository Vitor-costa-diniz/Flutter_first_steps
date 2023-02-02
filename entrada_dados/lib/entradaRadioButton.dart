import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({super.key});

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String? _escolhaUsuario = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados'),
      ),
      body: Container(
        child: Column(
          children: [
            RadioListTile(
              title: Text('Masculino'),
              value: 'm',
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            RadioListTile(
              title: Text('Feminino'),
              value: 'f',
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            RadioListTile(
              title: Text('teste'),
              value: 't',
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print('Resultado: $_escolhaUsuario');
              },
              child: Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),

            /*
            Text('Masculino'),
            Radio(
              value: 'M',
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
            Text('Feminio'),
            Radio(
              value: 'F',
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
              },
            ),
              */
          ],
        ),
      ),
    );
  }
}
