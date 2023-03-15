import 'package:atm_consultoria/screens/tela_cliente.dart';
import 'package:atm_consultoria/screens/tela_contato.dart';
import 'package:atm_consultoria/screens/tela_servico.dart';
import 'package:flutter/material.dart';
import 'screens/tela_empresa.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEmpresa() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaEmpresa()),
    );
  }

  void _abrirServico() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaServico()),
    );
  }

  void _abrirCliente() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaCliente()),
    );
  }

  void _abrirContato() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaContato()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('ATM Consultoria'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset('images/menu_empresa.png'),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: Image.asset('images/menu_servico.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: Image.asset('images/menu_cliente.png'),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: Image.asset('images/menu_contato.png'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
