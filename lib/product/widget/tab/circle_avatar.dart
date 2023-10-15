import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/size/widget_size.dart';

class CircleAvatarTab extends StatelessWidget {
  const CircleAvatarTab({required this.url, super.key});
  final String url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: WidgetSizes.spacingXxl3,
      child: Tab(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            url,
          ),
        ),
      ),
    );
  }
}
