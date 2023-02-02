import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _resultado = '0';
  void _precoBitcoin() async {
    String url = 'https://blockchain.info/ticker';

    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);
    print(retorno['BRL']);

    setState(() {
      _resultado = retorno['BRL']['buy'].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/bitcoin.png'),
              Padding(padding: const EdgeInsets.only(top: 30, bottom: 30)),
              Text(
                'R\$ $_resultado',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: ElevatedButton(
                  onPressed: _precoBitcoin,
                  child: const Text('Atualizar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
