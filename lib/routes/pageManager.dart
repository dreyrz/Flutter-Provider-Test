import 'package:flutter/cupertino.dart';

class PageManager extends ChangeNotifier {
  PageManager(
    this._pageController,
    this.teste,
  ) {
    print('ola');
  }
  final PageController _pageController;
  int teste;
  int currentPage = 0;

  void increment() {
    teste++;
    notifyListeners();
    debugPrint(teste.toString());
  }

  void decrement() {
    teste--;
    notifyListeners();
    debugPrint(teste.toString());
  }

  void setPage(int page) {
    if (currentPage == page) return;

    if (_pageController.hasClients) {
      currentPage = page;
      notifyListeners();
      _pageController.jumpToPage(page);
    }
  }
}
