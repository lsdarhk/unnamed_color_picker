import 'package:flutter/material.dart';
import 'package:unnamed_color_picker/pages/homepage.dart';

void main() => runApp(const ColorPickerApp());

class ColorPickerApp extends StatelessWidget {
  const ColorPickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}
