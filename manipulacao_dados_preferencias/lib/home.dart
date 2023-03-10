import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _textoSalvo = 'Nada Salvo!';

  TextEditingController _controllerCampo = TextEditingController();

  _salvar() async {
    String valorDigitado = _controllerCampo.text;

    final prefs = await SharedPreferences.getInstance();
    prefs.setString(
      'nome',
      valorDigitado,
    );
    print('Operaçâo (salvar): $valorDigitado');
    //print(prefs.get('nome'));
  }

  _recuperar() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textoSalvo = prefs.getString('nome') ?? 'Sem valor';
    });
    print('Operaçâo (recuperar): $_textoSalvo');
  }

  _remover() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('nome');
    print('Operaçâo (remover)');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manipulação de dados'),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(children: [
          Text(
            _textoSalvo,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Digite algo",
            ),
            controller: _controllerCampo,
          ),
          Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: () {
                  _salvar();
                },
                child: Text('Salvar'),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: () {
                  _recuperar();
                },
                child: Text('Recuperar'),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: () {
                  _remover();
                },
                child: Text('Remover'),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
