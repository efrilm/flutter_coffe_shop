import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:flutter/material.dart';

class DividerBottomSheet extends StatelessWidget {
  const DividerBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: SizeApp.s6,
        width: SizeApp.s120,
        decoration: BoxDecoration(
          color: ColorApp.black,
          borderRadius: BorderRadius.circular(RadiusApp.r12),
        ),
      ),
    );
  }
}
