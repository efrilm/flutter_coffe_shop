import 'package:coffe_shop/presentations/resources/asset_app.dart';
import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/style_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:coffe_shop/presentations/widgets/spacer.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final EdgeInsets margin;
  const CategoryCard({super.key, this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      margin: margin,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: SizeApp.s120,
            padding: const EdgeInsets.all(PaddingApp.p8),
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(RadiusApp.r12),
              shape: BoxShape.circle,
              color: ColorApp.secondary,
            ),
            child: Image.asset(ImageApp.sandwich),
          ),
          const SpacerHeight(SizeApp.s12),
          Text(
            'Sandwich',
            style: StyleApp.L.copyWith(
              color: ColorApp.primary,
              fontWeight: FontWeightApp.semiBold,
            ),
          )
        ],
      ),
    );
  }
}
