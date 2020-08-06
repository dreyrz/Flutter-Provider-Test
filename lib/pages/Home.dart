import 'package:flutter/material.dart';
import 'package:andreyflutterteste/components/TextoTeste/Texto.dart';
import 'package:andreyflutterteste/routes/pageManager.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Texto(),
      FloatingActionButton(
        onPressed: () {
          context.read<PageManager>().decrement();
        },
        child: Icon(Icons.minimize),
      )
    ]);
  }
}
