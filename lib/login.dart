import 'package:flutter/material.dart';
import 'package:projetopucc/cadastro.dart';
import 'package:projetopucc/video.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                width: 200,
                height: 200,
                child: Image.asset('assets/imagens/illustration1.png'),
              ),
              TextField(
                onChanged: (text) {},
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 15), //dando espaço entre os inputs
              TextField(
                onChanged: (text) {},
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20), //dando espaço entre o input senha e o botao

              ButtonTheme(
                minWidth: 230,
                height: 50,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Video()),
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
                    color: Color.fromRGBO(44, 159, 238, 1)),
              ),
              SizedBox(height: 20),

              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black87),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cadastro()),
                  );
                },
                child: Text('Ainda não é cadastrado? Cadastrar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
