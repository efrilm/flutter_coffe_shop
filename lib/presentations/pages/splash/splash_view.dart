import 'dart:async';

import 'package:coffe_shop/presentations/pages/home/home_view.dart';
import 'package:coffe_shop/presentations/resources/asset_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  _goNext() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));
  }

  _startDelay() {
    Timer(const Duration(milliseconds: DurationApp.d2000), _goNext);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.center,
      child: Image.asset(
        ImageApp.logo,
        width: SizeApp.s230,
        height: SizeApp.s230,
      ),
    ));
  }
}
