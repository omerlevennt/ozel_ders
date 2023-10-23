import 'package:flutter/material.dart';

@immutable
final class ImageConstants {
  const ImageConstants._();

  static final String icMenu = 'ic_menu'.toPng;
  static final String icNotification = 'ic_notification'.toPng;
  static final String icSearch = 'ic_search'.toPng;
  static final String icMessage = 'ic_message'.toPng;
  static final String icCalendar = 'ic_calendar'.toPng;
  static final String icCap = 'ic_cap'.toPng;
  static final String icFirstOnBoard = 'ic_first_on_board'.toPng;
  static final String icSecondOnBoard = 'ic_second_on_board'.toPng;
  static final String icThirdOnBoard = 'ic_third_on_board'.toPng;
}

extension on String {
  String get toPng => 'assets/icons/$this.png';
}
