import 'package:coffe_shop/presentations/resources/asset_app.dart';
import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/style_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:coffe_shop/presentations/widgets/spacer.dart';
import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(PaddingApp.p12),
      margin: const EdgeInsets.only(top: MarginApp.m12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusApp.r12),
        border: Border.all(width: SizeApp.s1, color: ColorApp.grey),
      ),
      child: Row(
        children: [
          Container(
            height: SizeApp.s60,
            width: SizeApp.s60,
            padding: const EdgeInsets.all(PaddingApp.p4),
            decoration: BoxDecoration(
              color: ColorApp.secondary,
              borderRadius: BorderRadius.circular(RadiusApp.r12),
            ),
            child: Image.asset(ImageApp.matcha),
          ),
          const SpacerWidth(SizeApp.s12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Matcha Latte',
                  style: StyleApp.L.copyWith(
                    color: ColorApp.primary,
                    fontWeight: FontWeightApp.semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SpacerHeight(SizeApp.s2),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempus urna et mauris porttitor hendrerit. Quisque ut vehicula erat, sit amet pellentesque nisi',
                  style: StyleApp.S.copyWith(
                    color: ColorApp.black.shade300,
                    fontWeight: FontWeightApp.light,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
          const SpacerWidth(SizeApp.s12),
          Text(
            'Rp 20.000',
            style: StyleApp.L.copyWith(
              color: ColorApp.green,
              fontWeight: FontWeightApp.semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
