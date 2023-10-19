import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/constants/locale_keys.dart';
import 'package:ozel_ders/product/widget/appBar/custom_app_bar.dart';

class MessagesView extends StatefulWidget {
  const MessagesView({super.key});

  @override
  State<MessagesView> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _MessagesViewAppBar(),
    );
  }
}

class _MessagesViewAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _MessagesViewAppBar();

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(
      appBarTitle: LocaleKeys.messages,
      leading: SizedBox.shrink(),
      actions: SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
