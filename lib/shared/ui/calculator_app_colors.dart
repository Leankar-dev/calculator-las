import 'package:flutter/material.dart';

sealed class CalculatorAppColors {
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
  static const Color primaryColor = Colors.blueGrey;
  static const Color secondaryColor = whiteColor;
  static Color get tertiaryColor => const Color(0xFF779933);

  static const Color errorColor = Color(0xFFFF5252);
  static Color get erroColor2 => const Color(0xFFdc3545);

  // cor para o  Dark Theme
  static const Color darkBgColor = Color(0xFF222222);

// Light Theme
  static const Color lightBgColor = whiteColor;
}
