import 'package:flutter/cupertino.dart';

class PageManager extends ChangeNotifier {
  PageManager(
    this._pageController,
  ) {
    print('PageManager foi construído');
  }
  final PageController _pageController;

  int currentPage = 0;

  void setPage(int page) {
    if (currentPage == page) return;

    if (_pageController.hasClients) {
      currentPage = page;
      notifyListeners();
      _pageController.jumpToPage(page);
    }
  }
}
