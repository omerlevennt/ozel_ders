import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

class CustomInkWellText extends StatelessWidget {
  const CustomInkWellText({required this.text, required this.onTab, super.key});
  final String text;
  final void Function() onTab;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: ThemeColor.royalBlue,
            ),
      ),
    );
  }
}
