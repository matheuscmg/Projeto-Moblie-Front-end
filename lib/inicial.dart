import 'package:flutter/material.dart';
import 'package:projetopucc/cadastro.dart';
import 'package:projetopucc/login.dart';

class Inicial extends StatefulWidget {
  const Inicial({Key? key}) : super(key: key);

  @override
  _InicialState createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 320,
                height: 250,
                child: Image.asset('assets/imagens/illustration1.png'),
              ),
              /*
               Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[                      
                      Text(" Use a Sua imaginação!", style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20
                      ),),
                    ],
               ),
              */

              SizedBox(height: 100),
              // SizedBox(height: 15), //dando espaço entre os inputs

              ButtonTheme(
                minWidth: 320,
                height: 50,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),                        
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    textColor: Color.fromRGBO(255, 255, 255, 1),
                    color: Color.fromRGBO(227, 45, 181, 0.7)),
              ),

              SizedBox(height: 20),

              ButtonTheme(
                minWidth: 320,
                height: 50,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cadastro()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      "Cadastrar",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    textColor: Color.fromRGBO(255, 255, 255, 1),
                    color: Color.fromRGBO(44, 159, 238, 1)),
              ),

              SizedBox(height: 20),
/*
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Ainda não é cadastrado?"),
                      Text(" Cadastrar", style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18
                      ),),
                    ],
                  )*/
            ],
          ),
        ),
      ),
    );
  }
}
