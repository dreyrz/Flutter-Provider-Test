import 'package:flutter/material.dart';
import 'package:andreyflutterteste/pages/Home/HomeList.dart';
import 'package:andreyflutterteste/states/stateManager.dart';
import 'package:provider/provider.dart';
import 'package:andreyflutterteste/pages/Login.dart';

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
              primaryColor: Colors.blue,
              scaffoldBackgroundColor: Colors.blue,
              appBarTheme: const AppBarTheme(elevation: 0),
              visualDensity: VisualDensity.adaptivePlatformDensity),
          initialRoute: ('/home'),
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case ('/login'):
                return MaterialPageRoute(builder: (_) => Login());
              case ('/home'):
              default:
                return MaterialPageRoute(builder: (_) => HomeList());
            }
          },
          home: HomeList(),
        ));
  }
}
