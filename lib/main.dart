import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unnamed_color_picker/pages/homepage.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ColorPickerAppState(),
        child: const ColorPickerApp(),
      ),
    );

class ColorPickerApp extends StatefulWidget {
  const ColorPickerApp({super.key});

  @override
  State<ColorPickerApp> createState() => _ColorPickerAppState();
}

class _ColorPickerAppState extends State<ColorPickerApp> {
  @override
  Widget build(BuildContext context) {
    ColorPickerAppState appState = Provider.of<ColorPickerAppState>(context);
    if (kDebugMode) {
      print('App is building');
      print('main.dart: ${appState.themeData}');
    }
    return MaterialApp(
      home: const Homepage(),
      theme: appState.themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
