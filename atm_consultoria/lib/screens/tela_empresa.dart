import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({super.key});

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Empresa'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('images/detalhe_empresa.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Sobre a empresa',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque commodo quam eu metus hendrerit viverra ut vitae lectus. Morbi in arcu sollicitudin, sollicitudin enim quis, fringilla erat. Fusce ornare augue nec felis elementum ultrices at tristique libero. Proin placerat magna non ultricies faucibus. Aenean non metus ac tellus congue ultrices. Sed facilisis vehicula purus, ac hendrerit ante ultricies quis. Nulla accumsan ut diam at elementum. Duis iaculis volutpat nibh in lobortis. Curabitur viverra venenatis consequat. Duis molestie orci sit amet purus iaculis, eu vestibulum libero tempor.'
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque commodo quam eu metus hendrerit viverra ut vitae lectus. Morbi in arcu sollicitudin, sollicitudin enim quis, fringilla erat. Fusce ornare augue nec felis elementum ultrices at tristique libero. Proin placerat magna non ultricies faucibus. Aenean non metus ac tellus congue ultrices. Sed facilisis vehicula purus, ac hendrerit ante ultricies quis. Nulla accumsan ut diam at elementum. Duis iaculis volutpat nibh in lobortis. Curabitur viverra venenatis consequat. Duis molestie orci sit amet purus iaculis, eu vestibulum libero tempor.'
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque commodo quam eu metus hendrerit viverra ut vitae lectus. Morbi in arcu sollicitudin, sollicitudin enim quis, fringilla erat. Fusce ornare augue nec felis elementum ultrices at tristique libero. Proin placerat magna non ultricies faucibus. Aenean non metus ac tellus congue ultrices. Sed facilisis vehicula purus, ac hendrerit ante ultricies quis. Nulla accumsan ut diam at elementum. Duis iaculis volutpat nibh in lobortis. Curabitur viverra venenatis consequat. Duis molestie orci sit amet purus iaculis, eu vestibulum libero tempor.'
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque commodo quam eu metus hendrerit viverra ut vitae lectus. Morbi in arcu sollicitudin, sollicitudin enim quis, fringilla erat. Fusce ornare augue nec felis elementum ultrices at tristique libero. Proin placerat magna non ultricies faucibus. Aenean non metus ac tellus congue ultrices. Sed facilisis vehicula purus, ac hendrerit ante ultricies quis. Nulla accumsan ut diam at elementum. Duis iaculis volutpat nibh in lobortis. Curabitur viverra venenatis consequat. Duis molestie orci sit amet purus iaculis, eu vestibulum libero tempor.'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
