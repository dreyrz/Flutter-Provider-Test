import 'package:flutter/material.dart';
import 'package:andreyflutterteste/components/TextoDinamico/Texto.dart';
import 'package:andreyflutterteste/states/stateManager.dart';
import 'package:provider/provider.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Texto(),
          FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {
                context.read<StateManager>().increment();
              },
              child: Icon(Icons.add, color: primaryColor))
        ]);
  }
}
