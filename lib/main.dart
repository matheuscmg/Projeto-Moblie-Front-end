import 'package:flutter/material.dart';
import 'package:projetopucc/apagarConta.dart';
import 'package:projetopucc/inicial.dart';
import 'package:projetopucc/logic/models/cadastros.dart';
import 'package:projetopucc/login.dart';
import 'package:projetopucc/video.dart';

import 'ajustes.dart';
import 'cadastro.dart';
import 'contato.dart';
import 'video.dart';

//import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/inicial',
      routes: {
        '/login': (context) => Login(),
        '/cadastro': (context) => Cadastro(),
        '/contato': (context) => Contato(),
        '/ajustes': (context) => Ajustes(),
        '/apagarConta': (context) => ApagarConta(),
        '/video': (context) => Video(),
        '/inicial': (context) => Inicial(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
