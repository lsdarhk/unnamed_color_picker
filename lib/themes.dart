import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color color = Colors.redAccent.shade200;
TextTheme textTheme = GoogleFonts.comfortaaTextTheme();

class Themes {
  static ThemeData lightTheme = ThemeData(
    colorSchemeSeed: color,
    textTheme: textTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: color,
    textTheme: textTheme,
  );
}
