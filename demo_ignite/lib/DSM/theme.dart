import 'package:flutter/material.dart';

@immutable
class AppTheme {
  static const colors = DemoColors();

  const AppTheme._();
}

@immutable
class DemoColors {
  final black = const Color(0xff0000000);
  final white = const Color(0xffFFFFFF);
  final primaryRed = const Color(0xffDC143D);
  final maroonRed = const Color(0xff8D202F);
  final secondaryRed = const Color(0xff8D202F);
  final darkGrey3 = const Color(0xff55585A);
  final pink = const Color(0xffE65A76);
  final greyBackground = const Color(0xffF9F9F9);
  final orange = const Color(0xffFF930F);
  final linkBlue = const Color(0xff1971C2);

  const DemoColors();
}
