import 'package:flutter/material.dart';

class HomeCircleAvatar extends StatelessWidget {
  const HomeCircleAvatar({required this.image, super.key});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: CircleAvatar(
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}
