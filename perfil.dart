import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const Perfil());
}

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _saldo = 0.50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 300,
        height: 500,
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset('imagens/perfil.png'),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange,
                ),
                padding: EdgeInsets.all(10),
                child: Text('Nome:Luiz \nCurso:3°DS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ),
            ]),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(30),
              child: Column(children: <Widget>[
                Text(
                  'SALDO DISPONIVEL:',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'RS$_saldo',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                Text('ADICIONAR:', style: TextStyle(color: Colors.white)),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: <Color>[
                    Color.fromARGB(255, 22, 194, 99),
                    Color.fromARGB(255, 22, 214, 109),
                    Color.fromARGB(255, 19, 231, 115)
                  ])),
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'ADICIONAR',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
