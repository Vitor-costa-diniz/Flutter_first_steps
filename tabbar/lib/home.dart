import 'package:flutter/material.dart';
import 'package:tabbar/primeiraPagina.dart';
import 'package:tabbar/segundaPagina.dart';
import 'package:tabbar/terceiraPagina.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 1,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abas'),
        bottom: TabBar(controller: _tabController, tabs: [
          Tab(
            text: ('Home'),
            icon: Icon(Icons.home),
          ),
          Tab(
            text: ('Email'),
            icon: Icon(Icons.email),
          ),
          Tab(
            text: ('Conta'),
            icon: Icon(Icons.account_circle),
          ),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          PrimeiraPagina(),
          SegundaPagina(),
          TerceiraPagina(),
        ],
      ),
    );
  }
}
