import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetopucc/ajustes.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  final List<String> _listItem = [
    'assets/imagens/img01.jpg',
    'assets/imagens/img02.jpg',
    'assets/imagens/img03.jpg',
    'assets/imagens/img01.jpg',
    'assets/imagens/img04.jpg',
    'assets/imagens/mario.jpg',
    'assets/imagens/minecraft.jpg',
    'assets/imagens/fort.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Bem Vindo"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Show Snackbar',
            onPressed: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ajustes()),
                  );
            },
          ),
          
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/imagens/funcare.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _listItem
                    .map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.cover)),
                            child: Transform.translate(
                              offset: Offset(50, -50),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 65, vertical: 63),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(.8),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red[800],
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}