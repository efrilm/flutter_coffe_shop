import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:coffe_shop/presentations/widgets/cards/recommended_card.dart';
import 'package:coffe_shop/presentations/widgets/section_title.dart';
import 'package:flutter/material.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: PaddingApp.p24,
        left: PaddingApp.p24,
        right: PaddingApp.p24,
      ),
      child: Column(
        children: [
          SectionTitle(
            text: 'Recommended',
            onSee: () {},
          ),
          ...List.generate(
            3,
            (index) => const RecommendedCard(),
          ),
        ],
      ),
    );
  }
}
