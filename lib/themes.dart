import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unnamed_color_picker/global_variables.dart';

TextTheme textTheme = GoogleFonts.comfortaaTextTheme();
GlobalVariables gv = GlobalVariables();
Color colorSchemeSeed = gv.randomRGB;

class Themes {
  static ThemeData lightTheme = ThemeData(
    colorSchemeSeed: colorSchemeSeed,
    textTheme: textTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: colorSchemeSeed,
    textTheme: textTheme,
  );
}
