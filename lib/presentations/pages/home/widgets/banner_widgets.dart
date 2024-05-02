import 'package:coffe_shop/data/data.dart';
import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:coffe_shop/presentations/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable
class BannerWidget extends StatefulWidget {
  int currentIndex;
  final List<String> items;
  BannerWidget({super.key, required this.currentIndex, required this.items});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: PaddingApp.p24,
        left: PaddingApp.p24,
        right: PaddingApp.p24,
      ),
      child: Row(
        children: [
          Column(
            children: List.generate(
              banners.length,
              (index) => _dots(index),
            ).toList(),
          ),
          const SpacerWidth(SizeApp.s12),
          Expanded(
            child: CarouselSlider(
              items: widget.items
                  .map(
                    (item) => ClipRRect(
                      borderRadius: BorderRadius.circular(RadiusApp.r12),
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                height: 200,
                onPageChanged: (index, reason) {
                  setState(() {
                    widget.currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _dots(int index) {
    return Container(
      height: widget.currentIndex == index ? SizeApp.s20 : SizeApp.s12,
      width: SizeApp.s4,
      margin: const EdgeInsets.only(bottom: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusApp.r12),
        color: widget.currentIndex == index ? ColorApp.primary : ColorApp.grey,
      ),
    );
  }
}
