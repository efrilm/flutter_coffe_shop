import 'package:coffe_shop/presentations/resources/asset_app.dart';
import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/style_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:coffe_shop/presentations/widgets/buttons/custom_button.dart';
import 'package:coffe_shop/presentations/widgets/buttons/custom_outline_button.dart';
import 'package:coffe_shop/presentations/widgets/divider_bottom_sheet.dart';
import 'package:coffe_shop/presentations/widgets/spacer.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final EdgeInsets margin;
  const ProductCard({super.key, this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDetail(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: SizeApp.s185,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusApp.r24),
          color: ColorApp.primary,
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: SizeApp.s120,
              padding: const EdgeInsets.all(PaddingApp.p8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(RadiusApp.r24),
                color: ColorApp.secondary,
              ),
              child: Image.asset(ImageApp.matcha),
            ),
            Container(
              padding: const EdgeInsets.all(PaddingApp.p8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Matcha Latte',
                          style: StyleApp.M.copyWith(
                            color: ColorApp.white,
                            fontWeight: FontWeightApp.regular,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      const SpacerWidth(SizeApp.s8),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: ColorApp.gold,
                            size: SizeApp.s18,
                          ),
                          const SpacerWidth(SizeApp.s4),
                          Text(
                            '4.5',
                            style: StyleApp.S.copyWith(
                              color: ColorApp.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SpacerHeight(SizeApp.s4),
                  Text(
                    'Rp 20.000',
                    style: StyleApp.M.copyWith(
                      color: ColorApp.white,
                      fontWeight: FontWeightApp.medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showDetail(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(RadiusApp.r30),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingApp.p24,
            vertical: PaddingApp.p12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const DividerBottomSheet(),
              const SpacerHeight(SizeApp.s12),
              Container(
                width: double.infinity,
                height: 300,
                padding: const EdgeInsets.all(PaddingApp.p12),
                decoration: BoxDecoration(
                  color: ColorApp.secondary,
                  borderRadius: BorderRadius.circular(RadiusApp.r24),
                ),
                child: Image.asset(ImageApp.matcha),
              ),
              const SpacerHeight(SizeApp.s16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Matcha Latte',
                          style: StyleApp.H3.copyWith(
                            color: ColorApp.primary,
                            fontWeight: FontWeightApp.semiBold,
                          ),
                        ),
                        Text(
                          'Coffe',
                          style: StyleApp.M.copyWith(
                            color: ColorApp.black.shade300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Rp. 20.000',
                        style: StyleApp.H3.copyWith(
                          color: ColorApp.primary,
                          fontWeight: FontWeightApp.semiBold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: ColorApp.gold,
                            size: SizeApp.s24,
                          ),
                          const SpacerWidth(SizeApp.s4),
                          Text(
                            '4.5',
                            style: StyleApp.L.copyWith(
                              color: ColorApp.black,
                              fontWeight: FontWeightApp.medium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SpacerHeight(SizeApp.s12),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempus urna et mauris porttitor hendrerit. Quisque ut vehicula erat, sit amet pellentesque nisi',
                style: StyleApp.M.copyWith(
                  color: ColorApp.black,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SpacerHeight(SizeApp.s16),
              Row(
                children: [
                  Flexible(
                    child: CustomOulineButton(
                      text: 'Keranjang',
                      onPressed: () {},
                    ),
                  ),
                  const SpacerWidth(SizeApp.s12),
                  Flexible(
                    child: CustomButton(
                      text: 'Beli Sekarang',
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
