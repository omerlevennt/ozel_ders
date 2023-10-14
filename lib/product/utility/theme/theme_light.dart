import 'package:flutter/material.dart';
import 'package:ozel_ders/product/decoration/outline_input_border_decoration.dart';
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
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          shape: CircleBorder(),
          backgroundColor: ThemeColor.bayLeaf,
          enableFeedback: false,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: ThemeColor.white,
          hintStyle: TextStyle(
            color: ThemeColor.oxfordBlue,
            fontSize: 16,
          ),
          border: OutlineInputBorderDecoration(),
          focusedBorder: OutlineInputBorderDecoration(),
          enabledBorder: OutlineInputBorderDecoration(),
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            color: ThemeColor.oxfordBlue,
            fontSize: 18,
          ),
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: ThemeColor.royalBlue,
          unselectedLabelColor: ThemeColor.oxfordBlue,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: ThemeColor.royalBlue,
          dividerColor: ThemeColor.transparent,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          elevation: 0,
          padding: EdgeInsets.zero,
          color: ThemeColor.white,
          shape: CircularNotchedRectangle(),
        ),
      );
}
