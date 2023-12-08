import 'package:flutter/material.dart';

class ThemeRepository extends ChangeNotifier {
  bool isDarkTheme = false;

  void toggle() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
