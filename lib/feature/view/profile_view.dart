import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/constants/locale_keys.dart';
import 'package:ozel_ders/product/widget/appBar/custom_app_bar.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
      appBarTitle: LocaleKeys.profile,
      leading: SizedBox.shrink(),
      actions: SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
