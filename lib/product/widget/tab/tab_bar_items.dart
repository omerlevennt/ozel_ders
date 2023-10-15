import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/size/widget_size.dart';

class TabBarItems extends StatelessWidget {
  const TabBarItems({required this.icon, super.key});
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: WidgetSizes.spacingXxl3,
      child: Tab(
        icon: icon,
      ),
    );
  }
}
