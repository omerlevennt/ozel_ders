import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/size/widget_size.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: WidgetSizes.zero,
      color: ThemeColor.alaboster,
      margin: EdgeInsets.zero,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.favorite_border_outlined,
          color: ThemeColor.oxfordBlue,
        ),
      ),
    );
  }
}
