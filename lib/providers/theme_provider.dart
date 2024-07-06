import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _theme = ThemeMode.light;
  ThemeMode get theme => _theme;
  late bool isDark = _theme == ThemeMode.dark;
  void toggleTheme(bool value) {
    isDark = value;
    _theme = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
    // if(kDebugMode) {
    //   print('systemBrightness: ${WidgetsBinding.instance.platformDispatcher
    //       .platformBrightness}');
    //   print('$runtimeType toggled');
    //   print('isDark: $isDark');
    //   print('_theme: $_theme');
    // }
  }//theme switcher using ThemeMode
}
