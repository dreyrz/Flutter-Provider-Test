import 'package:flutter/material.dart';
import 'package:andreyflutterteste/components/TextoDinamico/Texto.dart';
import 'package:provider/provider.dart';
import 'package:andreyflutterteste/states/stateManager.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.indigo[200],
        child: Column(
          children: <Widget>[
            Texto(),
            FloatingActionButton(
              onPressed: () => context.read<StateManager>().increment(),
              child: Icon(Icons.add),
            )
          ],
        ));
  }
}
