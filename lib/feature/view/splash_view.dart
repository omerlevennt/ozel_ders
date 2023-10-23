import 'package:flutter/material.dart';
import 'package:ozel_ders/feature/view/on_board_view.dart';
import 'package:ozel_ders/product/extension/context_extension.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with _SplashViewMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

mixin _SplashViewMixin on State<SplashView> {
  @override
  void initState() {
    super.initState();
    _goToTabView();
  }

  void _goToTabView() {
    Future.delayed(context.normalDuration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          fullscreenDialog: true,
          builder: (context) {
            return const OnBoardView();
          },
        ),
      );
    });
  }
}
