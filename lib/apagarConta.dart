import 'package:flutter/material.dart';

class ApagarConta extends StatefulWidget {
  const ApagarConta({Key? key}) : super(key: key);

  @override
  _ApagarContaState createState() => _ApagarContaState();
}

class _ApagarContaState extends State<ApagarConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Apagar Conta'),
        centerTitle: true,
      ),
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10), //dando espaço entre os inputs
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                    height: 20), //dando espaço entre o input senha e o botao
                  
                  ButtonTheme(
                  minWidth: 230,
                  height: 50,
                    child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text("Apagar minha conta", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                    textColor: Color.fromRGBO(255, 255, 255, 1),
                    color: Color.fromRGBO(44, 159, 238, 1)
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
