import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

class OutlineInputBorderDecoration extends OutlineInputBorder {
  const OutlineInputBorderDecoration()
      : super(
          borderSide: const BorderSide(color: ThemeColor.alto),
        );
}
