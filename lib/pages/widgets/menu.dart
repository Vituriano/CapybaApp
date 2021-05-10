import 'package:flutter/material.dart';
import 'package:capybaapp/pages/profile.dart';
import 'package:capybaapp/pages/widgets/home.dart';
import 'package:capybaapp/pages/widgets/restricted.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Rafaela Melo'),
            accountEmail: Text('rafaela.melo@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
          ),// user account
          ListTile(
            title: Text('Meu Perfil'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => Profile()) // material page rorute
              ); // navigator
            }, // on Tap
          ), // List Title
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => Home()) // material page rorute
              ); // navigator
            }, // on Tap
          ), // List Title
          ListTile(
            title: Text('Privado'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => Restricted()) // material page rorute
              ); // navigator
            }, // on Tap
          ), // List Title
          // **** Se não tiver confirmado o email ****
          ListTile(
            title: Text('Validar E-mail'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => Profile()) // material page rorute
              ); // navigator
            }, // on Tap
          ), // List Title
        ], // childrem
      ),  // child
    );
  }
}
