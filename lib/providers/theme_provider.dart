import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unnamed_color_picker/themes/dark_theme.dart';
import 'package:unnamed_color_picker/themes/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData themeData = lightTheme;
  void toggleThemeData() {
    if (kDebugMode) {
      print('$runtimeType toggled');
      print('homepage.dart: $themeData');
    }
    if (themeData == lightTheme) {
      themeData = darkTheme;

    } else {
      themeData = lightTheme;
    }
    notifyListeners();
  }
}//theme switcher
