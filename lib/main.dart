import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unnamed_color_picker/pages/homepage.dart';
import 'package:unnamed_color_picker/providers/theme_provider.dart';

void main() => runApp(
      const ColorPickerApp(),
    );

class ColorPickerApp extends StatelessWidget {
  const ColorPickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, child) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          if (kDebugMode) {
            print('App is building');
            print('main.dart: ${themeProvider.theme}');
          }
          return MaterialApp(
            home: const Homepage(),
            theme: themeProvider.theme,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
