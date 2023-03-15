import 'package:flutter/material.dart';
import 'package:informacoes_entre_paginas/cor.dart';

import 'outro.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double? width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: 400,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Cor().cor,
              child: Text('Oi'),
            ),
            Container2(
              width: width,
            ),
          ],
        ),
      ),
    );
  }
}
