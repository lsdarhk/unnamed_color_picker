import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unnamed_color_picker/providers/global_variables_provider.dart';

TextTheme textTheme = GoogleFonts.latoTextTheme();
GlobalVariablesProvider gv = GlobalVariablesProvider();
Color colorSchemeSeed = gv.currentColor;

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
