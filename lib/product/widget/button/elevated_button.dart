import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.onPressed,
    required this.title,
    super.key,
  });
  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20, top: 20),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: ThemeColor.white),
          ),
        ),
      ),
    );
  }
}
