import 'package:flutter/material.dart';
import 'package:andreyflutterteste/components/TextoTeste/Texto.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    return Container(color: primaryColor, child: Texto());
  }
}
