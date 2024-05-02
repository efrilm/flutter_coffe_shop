import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/style_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:coffe_shop/presentations/widgets/buttons/custom_button_icon.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomButtonIcon(
          onTap: () {},
          icon: Ionicons.notifications_outline,
          bgColor: Colors.transparent,
        ),
        Positioned(
          right: -4,
          top: -4,
          child: Container(
            height: SizeApp.s16,
            width: SizeApp.s16,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorApp.red,
            ),
            child: Text(
              '1',
              style: StyleApp.caption.copyWith(
                color: ColorApp.white,
                fontWeight: FontWeightApp.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
