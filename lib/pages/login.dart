import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:capybaapp/pages/widgets/home.dart';
import 'package:capybaapp/pages/register.dart';

class Login extends StatelessWidget {
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.00),
            child: Image.asset(
              'assets/images/forest.png',
              height: 150,
              fit:BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.00),
            child: TextField(
              obscureText: false,
              controller: _controladorEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail',
              ), // decoration
            ), // Text Field
          ), // Padding
          Padding(
            padding: const EdgeInsets.fromLTRB(16.00, 0, 16.00, 16.00),
            child: TextField(
              obscureText: true,
              controller: _controladorSenha,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ), // decoration
            ), // Text Field
          ), // Padding
          Padding(
            padding: const EdgeInsets.fromLTRB(16.00, 0, 16.00, 16.00),
            child: ElevatedButton(
              child: Text('Entrar'),
              onPressed: () async {
                final String email = _controladorEmail.text;
                final String senha = _controladorSenha.text;

                try {
                  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: email,
                    password: senha,
                  );

                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) => Home()) // material page rorute
                  ); // navigator
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    final snackBar = SnackBar(
                      content: Text('Esse E-mail não está cadastrado'),
                      duration: const Duration(seconds: 5),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else if (e.code == 'wrong-password') {
                    final snackBar = SnackBar(
                      content: Text('Senha incorreta'),
                      duration: const Duration(seconds: 5),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    final snackBar = SnackBar(
                      content: Text('Dados incorretos'),
                      duration: const Duration(seconds: 5),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                }
              },
            ), // Outlined Button
          ), // Padding
          Padding(
            padding: const EdgeInsets.fromLTRB(16.00, 0, 16.00, 16.00),
            child: TextButton(
              child: Text('Registrar-se'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) => Register()) // material page rorute
                );
              },
            ), // Text Button
          ), // Padding
        ], //children
      ), // body
    ); //scaffold
  }
}
