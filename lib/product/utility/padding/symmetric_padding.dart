import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/size/widget_size.dart';

@immutable
final class SymmetricPadding {
  const SymmetricPadding._();

  static const EdgeInsets horizontalNormal =
      EdgeInsets.symmetric(horizontal: WidgetSizes.spacingM);
  static const EdgeInsets horizontalLow =
      EdgeInsets.symmetric(horizontal: WidgetSizes.spacingXSs);
  static const EdgeInsets verticalLow =
      EdgeInsets.symmetric(vertical: WidgetSizes.spacingXSs);
  static const EdgeInsets verticalNormal =
      EdgeInsets.symmetric(vertical: WidgetSizes.spacingM);
}
