import 'package:bloc_tutorial/custom_theme.dart';
import 'package:bloc_tutorial/pages/client_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter Bloc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: AppBarTheme.of(context).copyWith(
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: CustomTheme.deepBlack,
            centerTitle: false,
            titleTextStyle: const TextStyle(
              fontSize: 26,
              color: CustomTheme.deepBlack,
              fontWeight: FontWeight.bold,
              letterSpacing: -1,
            )),
      ),
      home: const ClientsPage(),
    );
  }
}
