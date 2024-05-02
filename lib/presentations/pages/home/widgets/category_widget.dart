import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:coffe_shop/presentations/widgets/cards/category_card.dart';
import 'package:coffe_shop/presentations/widgets/section_title.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: PaddingApp.p24),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: PaddingApp.p24,
            ),
            child: SectionTitle(
              text: 'Kategori',
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(
                top: PaddingApp.p12,
                left: PaddingApp.p24,
              ),
              child: Row(
                children: List.generate(
                    5,
                    (index) => const CategoryCard(
                          margin: EdgeInsets.only(right: MarginApp.m12),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
