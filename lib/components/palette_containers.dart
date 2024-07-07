import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unnamed_color_picker/components/color_picker.dart';

Widget paletteContainers(Color color, BuildContext context) {
  final ColorScheme colorScheme = Theme.of(context).colorScheme;
  int r = color.red;
  int g = color.green;
  int b = color.blue;
  Color complementColor = Color.fromRGBO(255 - r, 255 - g, 255 - b, 1.0);
  const double size = 165;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        children: <Widget>[
          Text(
            'Selected Color',
            style: TextStyle(color: colorScheme.onSurface),
          ),
          GestureDetector(
            onTap: () => colorPicker(context),
            child: Container(
              margin: const EdgeInsets.all(15),
              height: size,
              width: size,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: color,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Clipboard.setData(ClipboardData(text: '$r, $g, $b')),
            child: Text(
              '$r, $g, $b',
              style: GoogleFonts.jetBrainsMono(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Text(
            'Complement Color',
            style: TextStyle(color: colorScheme.onSurface),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            height: size,
            width: size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: complementColor,
            ),
          ),
          GestureDetector(
            onTap: () => Clipboard.setData(ClipboardData(
                text:
                    '${complementColor.red}, ${complementColor.green}, ${complementColor.blue}')),
            child: Text(
              '${complementColor.red}, ${complementColor.green}, ${complementColor.blue}',
              style: GoogleFonts.jetBrainsMono(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
