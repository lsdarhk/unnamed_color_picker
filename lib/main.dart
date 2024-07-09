import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:unnamed_color_picker/pages/homepage.dart';
import 'package:unnamed_color_picker/providers/global_variables_provider.dart';
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
    return MultiProvider(
        providers: <ChangeNotifierProvider>[
          ChangeNotifierProvider<ThemeProvider>(
            create: (context) => ThemeProvider(),
          ),
          ChangeNotifierProvider<GlobalVariablesProvider>(
            create: (context) => GlobalVariablesProvider(),
          ),
        ],
        builder: (context, child) {
          ColorScheme colorScheme = Theme.of(context).colorScheme;
          TextTheme textTheme = GoogleFonts.latoTextTheme();
          final themeProvider = Provider.of<ThemeProvider>(context);
          final globalVariablesProvider =
              Provider.of<GlobalVariablesProvider>(context);
          Color colorSchemeSeed = globalVariablesProvider.currentColor;
          return MaterialApp(
            home: const Homepage(),
            theme: ThemeData(
              colorSchemeSeed: colorSchemeSeed,
              textTheme: textTheme.apply(
                bodyColor: colorScheme.onSurface,
                displayColor: colorScheme.onSurface,
              ),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              colorSchemeSeed: colorSchemeSeed,
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
