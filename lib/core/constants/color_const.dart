import 'package:flutter/material.dart';

class ColorConst {
  static final ColorConst _instance = ColorConst._init();
  static ColorConst get instance => _instance;

  ColorConst._init();

  // text color
  Color textColorPrimary = Color(0xFF0A191E);
  Color textColorSecondary = Color(0xFF798184);
  Color textColorDescription = Color(0xFF8F9698);

  // color
  Color bgSplash = Color(0xFF050352);
  Color bgContainer = Color(0xFFF1F2F6);
  Color activeMenu = Color(0xFF31B9CC);
}
