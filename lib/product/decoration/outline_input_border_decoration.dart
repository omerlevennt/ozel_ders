import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

class OutlineInputBorderDecoration extends OutlineInputBorder {
  const OutlineInputBorderDecoration()
      : super(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: const BorderSide(color: ThemeColor.alto),
        );
}
