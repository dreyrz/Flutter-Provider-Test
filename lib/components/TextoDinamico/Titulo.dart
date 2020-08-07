import 'package:flutter/material.dart';
import 'package:andreyflutterteste/states/pageManager.dart';
import 'package:provider/provider.dart';

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int currentPage = context.watch<PageManager>().currentPage;
    String texto() {
      String text;
      debugPrint('Página ${currentPage + 1}');
      if (currentPage == 0) {
        text = 'Página 1';
      } else if (currentPage == 1) {
        text = 'Página 2';
      } else if (currentPage == 2) {
        text = 'Página 3';
      }
      return text;
    }

    return Text(texto());
  }
}
