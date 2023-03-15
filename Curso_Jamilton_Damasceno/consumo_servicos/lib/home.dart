import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerCep = TextEditingController();
  String _resultado = 'Resultado';

  _recuperarCep() async {
    String cep = _controllerCep.text;
    String url = 'https://viacep.com.br/ws/$cep/json/';

    http.Response response;

    response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);

    String logradouro = retorno['logradouro'];
    String complemento = retorno['complemento'];
    String bairro = retorno['bairro'];
    String localidade = retorno['localidade'];

    setState(() {
      _resultado = '$logradouro, $complemento, $bairro, $localidade';
    });

    print(
        'Resposta logradouro : $logradouro, complemtento : $complemento, bairro : $bairro, localidade $localidade ');

    //print('resposta: ${response.statusCode}');
    //print('resposta: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumo de serviço Web'),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite um cep: ex: 05428200',
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              controller: _controllerCep,
            ),
            ElevatedButton(
              onPressed: _recuperarCep,
              child: Text('Clique aqui'),
            ),
            Text(_resultado),
          ],
        ),
      ),
    );
  }
}
