import 'package:flutter/material.dart';
import 'dart:math';

class GlobalVariables {
  int r = Random().nextInt(256);
  int g = Random().nextInt(256);
  int b = Random().nextInt(256);
  late Color randomRGB = Color.fromRGBO(r, g, b, 1.0);
}
