import 'package:coffe_shop/presentations/resources/color_app.dart';
import 'package:coffe_shop/presentations/resources/style_app.dart';
import 'package:coffe_shop/presentations/resources/value_app.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: PaddingApp.p16,
        left: PaddingApp.p24,
        right: PaddingApp.p24,
      ),
      child: TextFormField(
        readOnly: true,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: PaddingApp.p12),
          hintText: 'Cari menu yang anda suka disini',
          hintStyle: StyleApp.M.copyWith(
            color: ColorApp.black.shade200,
          ),
          suffixIcon: Icon(
            Ionicons.search_outline,
            color: ColorApp.black.shade100,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(RadiusApp.r12),
            borderSide: const BorderSide(
              color: ColorApp.grey,
              width: SizeApp.s1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(RadiusApp.r12),
            borderSide: const BorderSide(
              color: ColorApp.grey,
              width: SizeApp.s1,
            ),
          ),
        ),
      ),
    );
  }
}
