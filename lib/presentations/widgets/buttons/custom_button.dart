import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/style_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeApp.s44,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorApp.primary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusApp.r12),
          ),
        ),
        child: Text(
          text,
          style: StyleApp.L.copyWith(
            color: ColorApp.white,
            fontWeight: FontWeightApp.semiBold,
          ),
        ),
      ),
    );
  }
}
