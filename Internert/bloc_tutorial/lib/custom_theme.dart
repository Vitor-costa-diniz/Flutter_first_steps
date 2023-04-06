import 'package:flutter/material.dart';

class CustomTheme {
  static const MaterialColor deepBlack =
      MaterialColor(_blacPrimaryValue, <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blacPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  });

  static const int _blacPrimaryValue = 0xFF0000;
}
