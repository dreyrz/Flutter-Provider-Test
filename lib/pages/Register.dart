import 'package:flutter/material.dart';
import 'package:andreyflutterteste/components/TextoTeste/Texto.dart';
import 'package:provider/provider.dart';
import 'package:andreyflutterteste/routes/pageManager.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.indigo[200],
        child: Column(
          children: <Widget>[
            Texto(),
            FloatingActionButton(
              onPressed: () => context.read<PageManager>().increment(),
              child: Icon(Icons.add),
            )
          ],
        ));
  }
}
