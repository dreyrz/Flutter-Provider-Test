import 'package:flutter/material.dart';
import 'package:andreyflutterteste/components/customDrawer/drawerChild.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerChild(icon: Icons.home, text: 'Início', page: 0),
          DrawerChild(icon: Icons.list, text: 'Produtos', page: 1),
          DrawerChild(
              icon: Icons.playlist_add_check, text: 'Meus pedidos', page: 2),
        ],
      ),
    );
  }
}
