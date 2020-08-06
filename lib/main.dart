import 'package:flutter/material.dart';
import 'package:andreyflutterteste/routes/routes.dart';
import 'package:andreyflutterteste/routes/stateManager.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => StateManager(),
        child: MaterialApp(
          title: 'Teste do Andrey',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: Colors.blue,
              appBarTheme: const AppBarTheme(elevation: 0),
              visualDensity: VisualDensity.adaptivePlatformDensity),
          home: Routes(),
        ));
  }
}
