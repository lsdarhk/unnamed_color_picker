import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:unnamed_color_picker/pages/homepage.dart';
import 'package:unnamed_color_picker/providers/theme_provider.dart';

void main() => runApp(
      const ColorPickerApp(),
    );

class ColorPickerApp extends StatefulWidget {
  const ColorPickerApp({super.key});

  @override
  State<ColorPickerApp> createState() => _ColorPickerAppState();
}

class _ColorPickerAppState extends State<ColorPickerApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, child) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          ColorScheme colorScheme = Theme.of(context).colorScheme;
          TextTheme textTheme = GoogleFonts.latoTextTheme();
          if (kDebugMode) {
            print('${gv.currentColor.red}, ${gv.currentColor.green}, ${gv.currentColor.blue}');
          }
          return MaterialApp(
            home: const Homepage(),
            theme: ThemeData(
              colorSchemeSeed: gv.currentColor,
              textTheme: textTheme.apply(
                bodyColor: colorScheme.onSurface,
                displayColor: colorScheme.onSurface,
              ),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              colorSchemeSeed: gv.currentColor,
              textTheme: textTheme.apply(
                bodyColor: colorScheme.onSurface,
                displayColor: colorScheme.onSurface,
              ),
            ),
            themeMode: themeProvider.theme,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
