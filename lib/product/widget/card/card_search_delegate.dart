import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/size/widget_size.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

class CardSearchDelegate extends StatelessWidget {
  const CardSearchDelegate({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: WidgetSizes.zero,
      color: ThemeColor.concrete,
      child: ListTile(
        title: Text(text),
      ),
    );
  }
}
