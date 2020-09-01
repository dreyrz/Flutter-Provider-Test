import 'package:flutter/material.dart';
import 'package:andreyflutterteste/pages/Home/Home1.dart';
import 'package:andreyflutterteste/pages/Home/Home2.dart';
import 'package:andreyflutterteste/pages/Home/Home3.dart';
import 'package:provider/provider.dart';
import 'package:andreyflutterteste/states/pageManager.dart';
import 'package:andreyflutterteste/components/customDrawer/customDrawer.dart';
import 'package:andreyflutterteste/components/TextoDinamico/Titulo.dart';
import 'package:andreyflutterteste/pages/Table.dart';

class HomeList extends StatelessWidget {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => PageManager(pageController),
        child: Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: Titulo(),
          ),
          body: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[Home1(), Home2(), Home3(), TableWidget()],
          ),
        ));
  }
}
