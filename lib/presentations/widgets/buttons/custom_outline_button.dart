import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/style_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:flutter/material.dart';

class CustomOulineButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const CustomOulineButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeApp.s44,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: ColorApp.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusApp.r12),
            side: const BorderSide(color: ColorApp.primary, width: SizeApp.s1),
          ),
          side: const BorderSide(color: ColorApp.primary, width: SizeApp.s2),
        ),
        child: Text(
          text,
          style: StyleApp.L.copyWith(
            color: ColorApp.primary,
            fontWeight: FontWeightApp.semiBold,
          ),
        ),
      ),
    );
  }
}
