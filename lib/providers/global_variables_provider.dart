import 'package:flutter/material.dart';
import 'dart:math';

class GlobalVariablesProvider extends ChangeNotifier {
  int _r = Random().nextInt(256);
  int _g = Random().nextInt(256);
  int _b = Random().nextInt(256);
  int get r => _r;
  int get g => _g;
  int get b => _b;
  void getNewRGB() {
    _r = Random().nextInt(256);
    _g = Random().nextInt(256);
    _b = Random().nextInt(256);
    notifyListeners();
  }
}
