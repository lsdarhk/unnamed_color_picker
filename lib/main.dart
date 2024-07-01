import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:unnamed_color_picker/pages/homepage.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ColorPickerAppState(),
        child: const ColorPickerApp(),
      ),
    );

class ColorPickerApp extends StatelessWidget {
  const ColorPickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorPickerAppState appState =
        Provider.of<ColorPickerAppState>(context);
    return MaterialApp(
      home: const Homepage(),
      theme: ThemeData(
        colorSchemeSeed: Colors.redAccent.shade200,
        textTheme: GoogleFonts.changaTextTheme(),
        brightness: Brightness.dark,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: appState.themeMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
