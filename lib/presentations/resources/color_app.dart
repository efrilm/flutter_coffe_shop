import 'package:flutter/material.dart';

class ColorApp {
  static const Color primary = Color(0xFF513326);
  static const Color secondary = Color(0xFFF0DFD1);
  static const Color green = Color(0xFF004225);
  static const Color blue = Color(0xFF124076);
  static const Color red = Color(0xFFE72929);
  static const Color white = Color(0xFFFFFFFF);
  static const Color gold = Color(0xFFFFD700);

  static const MaterialColor grey = MaterialColor(
    0xFFCED3D7,
    <int, Color>{
      50: Color(0xFFFAFBFB),
      100: Color(0xFFF0F1F3),
      200: Color(0xFFE8EBED),
      300: Color(0xFFDEE2E4),
      400: Color(0xFFD8DCDF),
      500: Color(0xFFCED3D7),
      600: Color(0xFFBBC0C4),
      700: Color(0xFF929699),
      800: Color(0xFF717476),
      900: Color(0xFF57595A),
    },
  );

  static const MaterialColor black = MaterialColor(
    0xFF11150D,
    <int, Color>{
      50: Color(0xFFE7E8E7),
      100: Color(0xFFB5B6B4),
      200: Color(0xFF929390),
      300: Color(0xFF60625D),
      400: Color(0xFF41443D),
      500: Color(0xFF11150D),
      600: Color(0xFF0F130C),
      700: Color(0xFF0C0F09),
      800: Color(0xFF090C07),
      900: Color(0xFF000000),
    },
  );
}
