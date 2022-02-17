import 'package:flutter/material.dart';

class UIProvider extends ChangeNotifier {
  int _currentPage = 0;
  Color _colorNotify = Colors.lightGreen;

  int get currentPage {
    return this._currentPage;
  }

  set currentPage(int index) {
    this._currentPage = index;
    notifyListeners();
  }

  Color get colorNotify {
    return this._colorNotify;
  }

  set colorNotify(Color color) {
    this._colorNotify = color;
    notifyListeners();
  }
}
