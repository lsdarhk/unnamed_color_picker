import 'package:flutter/material.dart';
import 'dart:math';

class GlobalVariables{
  final int _r = Random().nextInt(256);
  final int _g = Random().nextInt(256);
  final int _b = Random().nextInt(256);
  int get r => _r;
  int get g => _g;
  int get b => _b;
  late Color randomRGB = Color.fromRGBO(r, g, b, 1.0);
}
