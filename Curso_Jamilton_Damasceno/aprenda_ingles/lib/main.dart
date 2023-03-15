import 'package:aprenda_ingles/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xff795548),
          //secondary: Colors.green,
        ),
        scaffoldBackgroundColor: Color(0xfff5e9b9),
      ),
    ));
