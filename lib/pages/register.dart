import 'package:flutter/material.dart';
import 'package:path/path.dart';


class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar conta'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.00, 0, 16.00, 16.00),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail',
              ), // decoration
            ), // Text Field
          ), // Padding
          Padding(
            padding: const EdgeInsets.fromLTRB(16.00, 0, 16.00, 16.00),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ), // decoration
            ), // Text Field
          ), // Padding
          Padding(
            padding: const EdgeInsets.fromLTRB(16.00, 0, 16.00, 16.00),
            child: ElevatedButton(
              child: Text('Salvar'),
              onPressed: () {

              },
            ), // Outlined Button
          ), // Padding
        ], //children
      ), // body
    ); //scaffold
  }
}
