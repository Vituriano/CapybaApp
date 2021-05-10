import 'package:flutter/material.dart';
import 'package:capybaapp/pages/widgets/menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arquivos Públicos'),
      ),
      drawer: Menu(),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.file_present),
            title: Text('Arquivo 1'),
          ),
          ListTile(
            leading: Icon(Icons.file_present),
            title: Text('Arquivo 2'),
          ),
          ListTile(
            leading: Icon(Icons.file_present),
            title: Text('Arquivo 3'),
          ),
          ListTile(
            leading: Icon(Icons.file_present),
            title: Text('Arquivo 4'),
          ),
        ], //List View
      ), // Body
    ); //scaffold
  }
}
