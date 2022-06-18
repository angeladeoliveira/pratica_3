import 'package:flutter/material.dart';
import './screens/login.dart';
import './screens/lista.dart';
import './screens/cadastro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MasterChef',
      routes: {
        '/': (context) => Login(),
        '/lista': (context) => Lista(),
        '/cadastro': (context) => Cadastro()
      },
    );
  }
}