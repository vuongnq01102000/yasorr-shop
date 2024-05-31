import 'package:flutter/material.dart';


extension GetTextExtension on TextStyle {
  static TextStyle get textTitleBold => const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontFamily: 'SanFrancisco',
        fontWeight: FontWeight.bold,
      );

  static TextStyle get text16Bold => const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontFamily: 'SanFrancisco',
        fontWeight: FontWeight.bold,
      );

  static TextStyle get text16SemiBold => const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontFamily: 'SanFrancisco',
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text16Regular => const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontFamily: 'SanFrancisco',
        fontStyle: FontStyle.normal,
      );
}
