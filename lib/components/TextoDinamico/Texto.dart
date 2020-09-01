import 'package:flutter/material.dart';
import 'package:andreyflutterteste/states/stateManager.dart';
import 'package:provider/provider.dart';

class Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<StateManager>(builder: (_, stateManager, ___) {
      return Center(
          child: Text(stateManager.contador.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30)));
    });
  }
}
