import 'package:flutter/material.dart';
import 'package:ozel_ders/product/extension/context_extension.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.leading,
    required this.appBarTitle,
    required this.actions,
    super.key,
  });
  final String appBarTitle;
  final Widget leading;
  final Widget actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        appBarTitle,
        style: context.textTheme.bodySmall,
      ),
      leading: leading,
      actions: [
        actions,
      ],
    );
  }
}
