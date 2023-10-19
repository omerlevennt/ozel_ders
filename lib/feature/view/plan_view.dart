import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/constants/locale_keys.dart';
import 'package:ozel_ders/product/widget/appBar/custom_app_bar.dart';

class PlanView extends StatefulWidget {
  const PlanView({super.key});

  @override
  State<PlanView> createState() => _PlanViewState();
}

class _PlanViewState extends State<PlanView> {
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
      appBarTitle: LocaleKeys.plan,
      leading: SizedBox.shrink(),
      actions: SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
