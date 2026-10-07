import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const background = Color(0xFF050B08);
  static const glow = Color(0xFF123A2A);
  static const accent = Color(0xFF2E7D5B);
  static const glass = Color(0x1AFFFFFF);
  static const glassBorder = Color(0x14FFFFFF);

  static OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(34),
    borderSide: BorderSide(color: color),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    colorScheme: const ColorScheme.dark(primary: accent, surface: background),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: glass,
      hintStyle: const TextStyle(color: Colors.white38),
      prefixIconColor: Colors.white60,
      suffixIconColor: Colors.white54,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      border: _border(glassBorder),
      enabledBorder: _border(glassBorder),
      focusedBorder: _border(Colors.white38),
      errorBorder: _border(Colors.redAccent.withValues(alpha: 0.6)),
      focusedErrorBorder: _border(Colors.redAccent),
      errorStyle: const TextStyle(color: Colors.redAccent),
    ),
  );
}
