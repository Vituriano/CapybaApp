import 'package:flutter/material.dart';
import 'package:capybaapp/pages/login.dart';
import 'package:capybaapp/pages/register.dart';
import 'package:capybaapp/pages/widgets/home.dart';

void main() => runApp(CapybaApp());

class CapybaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CapybaApp',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
