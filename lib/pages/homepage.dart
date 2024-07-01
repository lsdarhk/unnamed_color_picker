import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unnamed_color_picker/components/palette_containers.dart';
import 'package:unnamed_color_picker/themes/light_theme.dart';
import 'package:unnamed_color_picker/themes/dark_theme.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final appState = ColorPickerAppState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          paletteContainers(203, 75, 70),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Pick a color'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () => appState.toggleThemeMode(),
            child: const Text('Toggle theme mode'),
          ),
          const SizedBox(
            width: 40,
          ),
        ],
      ),
    );
  }
}

class ColorPickerAppState extends ChangeNotifier {
  ThemeData themeData = lightTheme;
  void toggleThemeMode() {
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
