import 'package:coffe_shop/presentations/pages/home/widgets/notification_button.dart';
import 'package:coffe_shop/presentations/resources/asset_app.dart';
import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/style_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:coffe_shop/presentations/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: SizeApp.s160,
          padding: const EdgeInsets.only(
            top: PaddingApp.p48,
            left: PaddingApp.p24,
            right: PaddingApp.p24,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(PatternApp.pattern1),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Ionicons.pin_outline,
                        color: ColorApp.white,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Location',
                            style: StyleApp.M.copyWith(
                              color: ColorApp.grey,
                              fontWeight: FontWeightApp.medium,
                            ),
                          ),
                          Text(
                            'Jakarta, Indonesia',
                            style: StyleApp.H3.copyWith(
                              color: ColorApp.white,
                              fontWeight: FontWeightApp.semiBold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const NotificationButton(),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: SizeApp.s80,
          margin: const EdgeInsets.only(
            top: MarginApp.m120,
            right: MarginApp.m24,
            left: MarginApp.m24,
          ),
          padding: const EdgeInsets.all(PaddingApp.p12),
          decoration: BoxDecoration(
            color: ColorApp.white,
            borderRadius: BorderRadius.circular(RadiusApp.r12),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 0),
                color: ColorApp.black.withOpacity(0.1),
                blurRadius: 4,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    IconApp.coin,
                    width: SizeApp.s30,
                  ),
                  const SpacerWidth(SizeApp.s12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '100 Poin',
                        style: StyleApp.XL.copyWith(
                          color: ColorApp.primary,
                          fontWeight: FontWeightApp.semiBold,
                        ),
                      ),
                      const SpacerHeight(SizeApp.s2),
                      Text(
                        'Redeem',
                        style: StyleApp.M.copyWith(
                          color: ColorApp.black.shade200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: SizeApp.s40,
                width: SizeApp.s2,
                decoration: const BoxDecoration(
                  color: ColorApp.grey,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    IconApp.giftbox,
                    width: SizeApp.s30,
                  ),
                  const SpacerWidth(SizeApp.s12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'My Reward',
                        style: StyleApp.XL.copyWith(
                          color: ColorApp.primary,
                          fontWeight: FontWeightApp.semiBold,
                        ),
                      ),
                      const SpacerHeight(SizeApp.s2),
                      Text(
                        '10 Reward',
                        style: StyleApp.M.copyWith(
                          color: ColorApp.black.shade200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
