import 'package:flutter/cupertino.dart';

class StateManager extends ChangeNotifier {
  StateManager() {
    print('StateManager foi construído');
  }
  int contador = 0;
  void increment() {
    contador++;
    notifyListeners();
  }

  void decrement() {
    contador--;
    notifyListeners();
  }
}
