import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:coffe_shop/presentations/widgets/cards/product_card.dart';
import 'package:coffe_shop/presentations/widgets/section_title.dart';
import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: PaddingApp.p24,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: PaddingApp.p24,
            ),
            child: SectionTitle(
              text: 'Popular',
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: PaddingApp.p24, top: PaddingApp.p12),
              child: Row(
                children: List.generate(
                  5,
                  (index) => const ProductCard(
                    margin: EdgeInsets.only(right: MarginApp.m12),
                  ),
                ).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
