import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({super.key});

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valor = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados'),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [
            Slider(
              value: _valor,
              min: 0,
              max: 10,
              label:
                  'Valor selecionado: ${_valor.toString()}', //'Valor selecionado'

              divisions: 5,
              activeColor: Colors.red,
              inactiveColor: Colors.black26,
              onChanged: (double novoValor) {
                setState(() {
                  _valor = novoValor;
                });
                //print('Valor selecionado: $novoValor');
              },
            ),
            ElevatedButton(
              onPressed: () {
                print('Valor selecionado: $_valor');
              },
              child: Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
