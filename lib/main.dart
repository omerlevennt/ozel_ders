import 'package:flutter/material.dart';
import 'package:ozel_ders/feature/home/home_view.dart';
import 'package:ozel_ders/product/utility/constants/main_constants.dart';
import 'package:ozel_ders/product/utility/theme/theme_light.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: MainConstants.title,
      theme: LightTheme().lightTheme,
      home: const HomeView(),
    );
  }
}
