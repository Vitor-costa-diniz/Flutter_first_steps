import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de Dados'),
      ),
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
              title: Text('Receber Notificação ?'),
              subtitle: Text('Voce Tem certeza meu chapa ?'),
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_escolhaUsuario) {
                  print('Escolha: Ativar notificações');
                } else {
                  print('Escolha: Não ativar notificações');
                }
              },
              child: Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),

            /*
            Switch(
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              },
            ),
            */

            /*
            Text('Receber Notificação'),
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
            */
          ],
        ),
      ),
    );
  }
}
