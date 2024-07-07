import 'package:flutter/material.dart';
import 'dart:math';

class GlobalVariablesProvider extends ChangeNotifier {
  int _r = Random().nextInt(256);
  int _g = Random().nextInt(256);
  int _b = Random().nextInt(256);
  int get r => _r;
  int get g => _g;
  int get b => _b;
  late Color currentColor = Color.fromRGBO(_r, _g, _b, 1.0);
  void getNewRandomRGB() {
    _r = Random().nextInt(256);
    _g = Random().nextInt(256);
    _b = Random().nextInt(256);
    currentColor = Color.fromRGBO(_r, _g, _b, 1.0);
    notifyListeners();
  }
  void updateColor(Color color) {
    currentColor = color;
    notifyListeners();
  }
}
