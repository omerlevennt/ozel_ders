import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/size/widget_size.dart';

@immutable
final class OnlyPadding {
  const OnlyPadding._();

  static const EdgeInsets onlyLeftLow =
      EdgeInsets.only(left: WidgetSizes.spacingXs);
  static const EdgeInsets onlyTopLow =
      EdgeInsets.only(top: WidgetSizes.spacingXs);
  static const EdgeInsets bottomLow =
      EdgeInsets.only(bottom: WidgetSizes.spacingXxl);
  static const EdgeInsets bottomNormal =
      EdgeInsets.only(bottom: WidgetSizes.spacingXxl8);
  static const EdgeInsets topLow = EdgeInsets.only(top: WidgetSizes.spacingXxl);
  static const EdgeInsets topNormal =
      EdgeInsets.only(top: WidgetSizes.spacingXxl8);
}
