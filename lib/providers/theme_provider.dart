import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _theme = ThemeMode.system;
  ThemeMode get theme => _theme;

  void toggleTheme() {
    if (_theme == ThemeMode.light) {
      _theme = ThemeMode.dark;

    } else {
      _theme = ThemeMode.light;
    }
    notifyListeners();
  }
}//theme switcher
