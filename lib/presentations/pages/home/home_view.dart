import 'package:coffe_shop/data/data.dart';
import 'package:coffe_shop/presentations/pages/home/widgets/banner_widgets.dart';
import 'package:coffe_shop/presentations/pages/home/widgets/category_widget.dart';
import 'package:coffe_shop/presentations/pages/home/widgets/header_home.dart';
import 'package:coffe_shop/presentations/pages/home/widgets/popular_widget.dart';
import 'package:coffe_shop/presentations/pages/home/widgets/recommended_widget.dart';
import 'package:coffe_shop/presentations/pages/home/widgets/search_widget.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:coffe_shop/presentations/widgets/custom_divider.dart';
import 'package:coffe_shop/presentations/widgets/spacer.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int initialBanner = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          const HeaderHome(),
          BannerWidget(
            currentIndex: initialBanner,
            items: banners,
          ),
          const SearchWidget(),
          const CustomDivider(
            margin: EdgeInsets.only(top: MarginApp.m16),
          ),
          const CategoryWidget(),
          const PopularWidget(),
          const RecommendedWidget(),
          const SpacerHeight(SizeApp.s160),
        ],
      ),
    );
  }
}
