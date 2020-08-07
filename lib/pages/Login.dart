import 'package:flutter/material.dart';
import 'package:andreyflutterteste/components/TextoDinamico/Texto.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Login')),
      body: Center(
          child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              color: Color.fromARGB(100, 0, 0, 0),
              child: SizedBox(height: 400, child: Texto()))),
    );
  }
}
