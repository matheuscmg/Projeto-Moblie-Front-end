import 'package:flutter/material.dart';
import 'package:projetopucc/video.dart';

class Ajustes extends StatefulWidget {
  const Ajustes({Key? key}) : super(key: key);

  @override
  _AjustesState createState() => _AjustesState();
}

class _AjustesState extends State<Ajustes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Ajustes'),
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
                  width: 300,
                height: 250,
                  child: Image.asset('assets/imagens/illustration1.png'),
                ),

                SizedBox(height: 10),

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
                    labelText: 'Senha Antiga',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Nova Senha' ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ), 
                SizedBox(height: 15),

                ButtonTheme(
                  minWidth: 230,
                  height: 50,
                child:RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Video()),                        
                      );

                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text('Alterar Senha'),
                    textColor: Color.fromRGBO(255, 255, 255, 1),
                    color: Color.fromRGBO(44, 159, 238, 1)
                    ),
                ),

                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/apagarConta');
                  },
                  child: Text('Apagar Conta'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
