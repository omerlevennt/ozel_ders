import 'package:flutter/material.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

final class LightTheme {
  LightTheme() {
    _lightThemeData = ThemeData.light();
  }
  late final ThemeData _lightThemeData;

  ThemeData get lightTheme => _lightThemeData.copyWith(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: ThemeColor.transparent,
          systemOverlayStyle: ThemeColor.systemOverlayStyleDark,
          iconTheme: IconThemeData(
            color: ThemeColor.oxfordBlue,
            size: 28,
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: ThemeColor.oxfordBlue,
            fontSize: 18,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          shape: CircleBorder(),
          backgroundColor: ThemeColor.bayLeaf,
          enableFeedback: false,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: ThemeColor.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeColor.alto),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeColor.alto),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeColor.alto),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeColor.alto),
          ),
        ),
      );
}
