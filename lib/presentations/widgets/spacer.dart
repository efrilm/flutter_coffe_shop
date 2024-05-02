import 'package:flutter/material.dart';

class SpacerHeight extends StatelessWidget {
  final double d;
  const SpacerHeight(this.d, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: d,
    );
  }
}

class SpacerWidth extends StatelessWidget {
  final double d;
  const SpacerWidth(this.d, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: d,
    );
  }
}
