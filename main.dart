import 'package:flutter/material.dart';
import 'carrinho.dart';
import 'perfil.dart';

void main() {
  runApp(const Inicio());
}

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

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

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: _index);
  }

  setPaginaAtual(pagina) {
    setState(() {
      _index = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          "CANTINA DO CÉU",
        ),
      ),
      extendBody: true,
      body: PageView(
        scrollBehavior: null,
        controller: pc,
        children: [Destaque(), Carrinho(), Perfil()],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepOrange,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Carrinho'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Perfil'),
        ],
        onTap: (pagina) {
          pc.animateToPage(pagina,
              duration: Duration(milliseconds: 300), curve: Curves.linear);
        },
      ),
    );
  }
}

class Destaque extends StatelessWidget {
  const Destaque({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        height: 350,
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              SizedBox(
                width: 160,
                height: 160,
                child: IconButton(
                    icon: Image.asset('imagens/lanche.png'),
                    iconSize: 100,
                    onPressed: () {}),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                width: 160,
                height: 160,
                child: IconButton(
                    icon: Image.asset('imagens/bebidas.png'),
                    iconSize: 100,
                    onPressed: () {}),
              ),
            ]),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 160,
                height: 160,
                child: IconButton(
                    icon: Image.asset('imagens/doces.png'),
                    iconSize: 100,
                    onPressed: () {}),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                width: 160,
                height: 160,
                child: IconButton(
                    icon: Image.asset('imagens/pasteis.png'),
                    iconSize: 100,
                    onPressed: () {}),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
