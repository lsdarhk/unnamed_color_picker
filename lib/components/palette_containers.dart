import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:unnamed_color_picker/global_variables.dart';

Widget paletteContainers(int r, int g, int b) {
  if(kDebugMode){
    print('paletteContainers rebuilding');
  }
  GlobalVariables gv = GlobalVariables();
  r = r.clamp(0, 255);
  g = g.clamp(0, 255);
  b = b.clamp(0, 255);
  const double size = 165;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.all(15),
        height: size,
        width: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color.fromRGBO(r, g, b, 1.0),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(15),
        height: size,
        width: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color.fromRGBO(255 - r, 255 - g, 255 - b, 1.0),
        ),
      ),
    ],
  );
}
