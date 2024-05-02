import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/style_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final Function()? onSee;

  const SectionTitle({
    super.key,
    required this.text,
    this.onSee,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: StyleApp.H3.copyWith(
            color: ColorApp.black,
            fontWeight: FontWeightApp.bold,
          ),
        ),
        GestureDetector(
          onTap: onSee,
          child: Text(
            'Lihat Semua',
            style: StyleApp.M.copyWith(
              color: ColorApp.black.shade200,
            ),
          ),
        ),
      ],
    );
  }
}
