import 'package:flutter/material.dart';
import 'package:ozel_ders/product/decoration/outline_input_border_decoration.dart';
import 'package:ozel_ders/product/utility/size/widget_size.dart';
import 'package:ozel_ders/product/utility/theme/theme_color.dart';

final class LightTheme {
  LightTheme() {
    _lightThemeData = ThemeData.light();
  }
  late final ThemeData _lightThemeData;

  ThemeData get lightTheme => _lightThemeData.copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: ThemeColor.alaboster,
        appBarTheme: const AppBarTheme(
          elevation: WidgetSizes.zero,
          backgroundColor: ThemeColor.transparent,
          systemOverlayStyle: ThemeColor.systemOverlayStyleDark,
          centerTitle: true,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          shape: CircleBorder(),
          backgroundColor: ThemeColor.royalBlue,
          enableFeedback: false,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: ThemeColor.transparent,
          hintStyle: TextStyle(
            color: ThemeColor.oxfordBlue,
            fontSize: WidgetSizes.spacingM,
          ),
          border: OutlineInputBorderDecoration(),
          focusedBorder: OutlineInputBorderDecoration(),
          enabledBorder: OutlineInputBorderDecoration(),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: ThemeColor.oxfordBlue, // cursor color
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            color: ThemeColor.oxfordBlue,
            fontSize: WidgetSizes.spacingMx,
          ),
          titleLarge: TextStyle(
            decorationThickness: 0.0000001,
            color: ThemeColor.oxfordBlue,
          ),
        ),
        tabBarTheme: const TabBarTheme(
          labelPadding: EdgeInsets.zero,
          labelColor: ThemeColor.royalBlue,
          unselectedLabelColor: ThemeColor.oxfordBlue,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: ThemeColor.royalBlue,
          tabAlignment: TabAlignment.fill,
          dividerColor: ThemeColor.transparent,
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
          elevation: WidgetSizes.zero,
          padding: EdgeInsets.zero,
          color: ThemeColor.white,
          shape: CircularNotchedRectangle(),
        ),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: ThemeColor.oxfordBlue),
      );
}
