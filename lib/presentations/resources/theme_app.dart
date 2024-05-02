import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/style_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorApp.white,
    primaryColor: ColorApp.primary,
    dividerColor: ColorApp.grey,
    fontFamily: 'Poppins',
    appBarTheme: AppBarTheme(
      backgroundColor: ColorApp.white,
      titleTextStyle: StyleApp.XL.copyWith(
        color: ColorApp.black,
        fontWeight: FontWeightApp.bold,
      ),
      elevation: 0,
    ),
  );
}
