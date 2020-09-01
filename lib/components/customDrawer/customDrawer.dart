import 'package:flutter/material.dart';
import 'package:andreyflutterteste/components/customDrawer/drawerChild.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerChild(icon: Icons.home, text: 'Página 1', page: 0),
          DrawerChild(icon: Icons.list, text: 'Página 2', page: 1),
          DrawerChild(
              icon: Icons.playlist_add_check, text: 'Página 3', page: 2),
          DrawerChild(icon: Icons.apps, text: 'Página 4', page: 3),
        ],
      ),
    );
  }
}
