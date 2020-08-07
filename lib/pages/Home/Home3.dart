import 'package:flutter/material.dart';
import 'package:andreyflutterteste/components/TextoDinamico/Texto.dart';
import 'package:andreyflutterteste/states/stateManager.dart';
import 'package:provider/provider.dart';

class Home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Texto(),
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              context.read<StateManager>().decrement();
            },
            child: Icon(Icons.minimize, color: Colors.blue),
          )
        ]);
  }
}
