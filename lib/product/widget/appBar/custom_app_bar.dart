import 'package:flutter/material.dart';

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
      title: Text(appBarTitle),
      leading: leading,
      actions: [
        actions,
      ],
    );
  }
}
