import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final EdgeInsets margin;
  const CustomDivider({
    super.key,
    this.height = SizeApp.s8,
    this.width = double.infinity,
    this.color,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(color: color ?? ColorApp.grey.shade100),
    );
  }
}
