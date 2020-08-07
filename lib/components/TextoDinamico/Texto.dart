import 'package:flutter/material.dart';
import 'package:andreyflutterteste/states/stateManager.dart';
import 'package:provider/provider.dart';

class Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contador = context.watch<StateManager>().contador;
    return Center(
        child: Text(contador.toString(),
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30)));
  }
}
