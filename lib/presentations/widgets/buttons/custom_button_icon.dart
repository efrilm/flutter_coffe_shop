import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:flutter/material.dart';

class CustomButtonIcon extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color? bgColor;
  final Color? iconColor;
  final Color? borderColor;
  final double height;
  final double width;
  final double iconSize;
  final double borderRadius;

  const CustomButtonIcon({
    super.key,
    required this.onTap,
    required this.icon,
    this.bgColor,
    this.iconColor,
    this.height = SizeApp.s50,
    this.width = SizeApp.s50,
    this.iconSize = SizeApp.s24,
    this.borderColor,
    this.borderRadius = RadiusApp.r12,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: bgColor ?? ColorApp.white,
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                width: SizeApp.s1,
                color: borderColor ?? ColorApp.grey.shade600,
              ),
            ),
            child: Icon(
              icon,
              color: iconColor ?? ColorApp.grey.shade600,
              size: iconSize,
            ),
          ),
        ],
      ),
    );
  }
}
