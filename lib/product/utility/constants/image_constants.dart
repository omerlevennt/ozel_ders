import 'package:flutter/material.dart';

@immutable
final class ImageConstants {
  const ImageConstants._();

  static final String icMenu = 'ic_menu'.toPng;
  static final String icNotification = 'ic_notification'.toPng;
  static final String icSearch = 'ic_search'.toPng;
  static final String icMessage = 'ic_message'.toPng;
  static final String icCalendar = 'ic_calendar'.toPng;
}

extension on String {
  String get toPng => 'assets/icons/$this.png';
}
