import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              //text,number,emailAddres,datetime,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite um valor',
              ),
              //enabled: false,
              //maxLength: 2,
              //maxLengthEnforcement: MaxLengthEnforcement.none,
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),
              //obscureText: true,
              /*
              onChanged: (String e) {
                print('Valor digitado $e');
              },*/
              onSubmitted: (String value) {
                print('Valor digitado: $value');
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Valor digitado: ${_textEditingController.text}');
            },
            child: Text('Salvar'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
            ),
          ),
        ],
      ),
    );
  }
}
