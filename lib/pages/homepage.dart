import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget paletteContainers(int r, int g, int b) {
    r = r.clamp(0, 255);
    g = g.clamp(0, 255);
    b = b.clamp(0, 255);
    const dynamic size = 165;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15),
          height: size,
          width: size,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromRGBO(r, g, b, 1.0)),
        ),
        Container(
          margin: const EdgeInsets.all(15),
          height: size,
          width: size,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromRGBO(255 - r, 255 - g, 255 - b, 1.0)),
        )
      ],
    );
  }

  final appState = ColorPickerAppState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          paletteContainers(203, 75, 70),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Pick a color'),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => appState.changeToLightTheme(),
                child: const Text('Light mode'),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () => appState.changeToDarkTheme,
                child: const Text('Dark mode'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ColorPickerAppState extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  void changeToLightTheme() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  void changeToDarkTheme() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }
}
