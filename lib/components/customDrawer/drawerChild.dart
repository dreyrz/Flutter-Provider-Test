import 'package:flutter/material.dart';
import 'package:andreyflutterteste/routes/pageManager.dart';
import 'package:provider/provider.dart';

class DrawerChild extends StatelessWidget {
  final IconData icon;
  final String text;
  final int page;
  const DrawerChild({this.icon, this.text, this.page});
  @override
  Widget build(BuildContext context) {
    final int currentPage = context.watch<PageManager>().currentPage;
    return InkWell(
        onTap: () {
          context.read<PageManager>().setPage(page);
          Navigator.pop(context);
        },
        child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Icon(icon,
                      size: 32,
                      color: currentPage == page ? Colors.purple : Colors.grey),
                ),
                Text(text,
                    style: TextStyle(
                        fontSize: 16,
                        color:
                            currentPage == page ? Colors.purple : Colors.grey)),
              ],
            )));
  }
}
