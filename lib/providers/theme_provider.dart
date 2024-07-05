import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _theme = ThemeMode.system;
  ThemeMode get theme => _theme;
  final systemBrightness =
      WidgetsBinding.instance.platformDispatcher.platformBrightness;
  void toggleTheme() {
    bool isDark =
        systemBrightness == Brightness.dark || _theme == ThemeMode.dark;
    if (isDark) {
      _theme = ThemeMode.light;
    } else {
      _theme = ThemeMode.dark;
    }
    // if (kDebugMode) {
    //   print('${gv.r}, ${gv.g}, ${gv.b}');
    // }
    notifyListeners();
  }
} //theme switcher using ThemeMode
