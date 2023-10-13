import 'package:flutter/material.dart';

class AddFabButton extends StatelessWidget {
  const AddFabButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add_outlined),
    );
  }
}
