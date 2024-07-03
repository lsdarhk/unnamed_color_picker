import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unnamed_color_picker/pages/homepage.dart';
import 'package:unnamed_color_picker/providers/theme_provider.dart';
import 'package:unnamed_color_picker/themes.dart';

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
          return MaterialApp(
            home: const Homepage(),
            theme: Themes.lightTheme,
            darkTheme: Themes.darkTheme,
            themeMode: themeProvider.theme,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
