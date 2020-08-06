import 'package:flutter/material.dart';
import 'package:andreyflutterteste/routes/pageManager.dart';
import 'package:provider/provider.dart';

class Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.watch<PageManager>().teste.toString()));
  }
}
