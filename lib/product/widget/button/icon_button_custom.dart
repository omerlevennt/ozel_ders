import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

class IconButtonCustom extends StatelessWidget {
  const IconButtonCustom({
    required this.onPressed,
    required this.icon,
    super.key,
  });
  final VoidCallback onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: ThemeColor.oxfordBlue,
    );
  }
}
