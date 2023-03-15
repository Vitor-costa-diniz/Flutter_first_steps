import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _recuperarBancoDados() async {
    final caminhoBancoDados = await getDatabasesPath();
    final localBancoDados = join(caminhoBancoDados, "banco.db");

    var bd = await openDatabase(
      localBancoDados,
      version: 1,
      onCreate: (db, dbVersaorecente) {
        String sql =
            'CREATE TABLE usuarios (id INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR, idade INTEGER)';
        db.execute(sql);
      },
    );

    return bd;
    //print('Aberto: ${bd.isOpen}');
  }

  _salvar() async {
    Database bd = await _recuperarBancoDados();

    Map<String, dynamic> dadosUsuarios = {
      'nome': 'zuric destefanno',
      'idade': 58,
    };
    int id = await bd.insert('usuarios', dadosUsuarios);
    print('Salvo: $id');
  }

  _listarUsuarios() async {
    Database bd = await _recuperarBancoDados();
    String sql = "SELECT * FROM usuarios";
    //String sql = "SELECT * FROM usuarios Where id = 5 ";
    //String sql = "SELECT * FROM usuarios Where idade > 30 AND idade < 76 ";
    //String sql = "SELECT * FROM usuarios Where idade BETWEEN 18 AND 46";
    //String sql = "SELECT * FROM usuarios Where idade IN(18,30)";
    //String filtro = "ilva";
    //String sql = "SELECT * FROM usuarios Where nome LIKE '%$filtro%' ";
    //String sql = "SELECT *, UPPER(nome) as nomeMaiu FROM usuarios Where 1=1 ORDER BY UPPER(nome) DESC"; // ASC, DESC
    //String sql ="SELECT *, UPPER(nome) as nomeMaiu FROM usuarios Where 1=1 ORDER BY idade DESC LIMIT 3";
    List usuarios = await bd.rawQuery(sql);

    for (var usuario in usuarios) {
      print('item id: ${usuario['id']}'
          ' nome: ${usuario['nome']}'
          //' nome: ${usuario['nomeMaiu']}'
          ' idade: ${usuario['idade']}');
    }
    //print('Usuarios $usuarios');
  }

  _listarUsuarioPeloId(int id) async {
    Database bd = await _recuperarBancoDados();

    // CRUD -> Create, Read, Update and Delete
    List usuarios = await bd.query('usuarios',
        columns: ['id', 'nome', 'idade'], where: 'id = ?', whereArgs: [id]);
    for (var usuario in usuarios) {
      print('item id: ${usuario['id']}'
          ' nome: ${usuario['nome']}'
          //' nome: ${usuario['nomeMaiu']}'
          ' idade: ${usuario['idade']}');
    }
  }

  _excluirUsuario(int id) async {
    Database bd = await _recuperarBancoDados();

    int retorno = await bd.delete('usuarios',
        /*where: 'id = ? AND nome = ? AND idade = ?',
      whereArgs: [id, 'Maria Silva', 58],*/
        where: 'nome = ? AND idade = ?',
        whereArgs: ['Jamilton Damasceno', 40]);

    print('Quantidade de itens removidas: $retorno');
  }

  _atualizarUsuario(int id) async {
    Database bd = await _recuperarBancoDados();

    Map<String, dynamic> dadosUsuarios = {
      'nome': 'Mariana Almeida',
      'idade': 18,
    };
    int retorno = await bd.update(
      'usuarios',
      dadosUsuarios,
      where: 'id = ?',
      whereArgs: [id],
    );

    print('Quantidade de itens atualizadas: $retorno');
  }

  @override
  Widget build(BuildContext context) {
    _salvar();
    //_excluirUsuario(2);
    //_atualizarUsuario(3);
    //_listarUsuarioPeloId(3);
    _listarUsuarios();
    return Container(
      color: Colors.white,
    );
  }
}
