import 'package:flutter/material.dart';
import 'package:andreyflutterteste/components/TextoDinamico/Texto.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Texto(),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/login');
          },
          child: Text('Ir para a tela de login',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        )
      ],
    );
  }
}
