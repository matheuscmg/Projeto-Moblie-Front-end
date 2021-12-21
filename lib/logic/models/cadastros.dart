import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:meta/meta.Dart';
import 'package:http/http.dart' as http;

class Cadastros {
  final String email;
  final String nome;
  final String senha;

  Cadastros(String this.email, String this.nome, String this.senha);

  Future<List> requisicaoBanco(String url) async {
    List dados = [];
    try {
      print('estou aqui');
      print(url);
      final response = await http.get(Uri.parse(url));
      print(response.body);
      dados = await json.decode(json.encode(response));
      //dados = jsonDecode(response.body);
      print(json);
      print(response.body);
      return dados;
    } catch (error) {
      throw Exception(error);
    }
  }

  //var pdfText= await json.decode(json.encode(response.databody);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
