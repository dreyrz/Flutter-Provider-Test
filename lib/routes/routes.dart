import 'package:flutter/material.dart';
import 'package:andreyflutterteste/pages/Home.dart';
import 'package:andreyflutterteste/pages/Login.dart';
import 'package:andreyflutterteste/pages/Register.dart';
import 'package:provider/provider.dart';
import 'package:andreyflutterteste/routes/pageManager.dart';
import 'package:andreyflutterteste/routes/stateManager.dart';
import 'package:andreyflutterteste/components/customDrawer/customDrawer.dart';
import 'package:andreyflutterteste/components/Titulo.dart';

class Routes extends StatelessWidget {
  final PageController pageController = PageController();
  final int teste = 30;
  @override
  Widget build(BuildContext context) {
    final teste = context.watch<StateManager>().x;
    return ChangeNotifierProvider(
        create: (_) => PageManager(pageController, teste),
        child: Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: Titulo(),
          ),
          body: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              Home(),
              Login(),
              Register(),
            ],
          ),
        ));
  }
}
