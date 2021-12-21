import 'package:flutter/material.dart';

class Contato extends StatefulWidget {
  const Contato({Key? key}) : super(key: key);

  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contato'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/imagens/illustration1.png'),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Fone',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10), //dando espaço entre os inputs
                TextField(
                  maxLines: 8,
                  decoration: InputDecoration(
                    labelText: 'Assunto',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                ButtonTheme(
                  minWidth: 230,
                  height: 50, //dando espaço entre o input senha e o botao
                  child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        "Enviar",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      textColor: Color.fromRGBO(255, 255, 255, 1),
                      color: Color.fromRGBO(44, 159, 238, 1)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
