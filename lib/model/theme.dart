import 'package:flutter/material.dart';

import 'package:codex_woltiensis_demo/model/colors.dart';

class CustomTheme {
  static ThemeData get themeDataLight {
    return ThemeData(
      colorScheme: ColorScheme(
        primary: redAlert.withOpacity(0.9),
        secondary: greenValid,

        surface: Colors.white,
        background: blueNeutral.withOpacity(0.8),

        error: redAlert,

        onPrimary: Colors.white,
        onSecondary: Colors.white,

        onSurface: Colors.grey,
        onBackground: Colors.black,
        onError: Colors.white,

        brightness: Brightness.light,
      ),

      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),

      scaffoldBackgroundColor: blueNeutral.shade50,
      brightness: Brightness.light,


      // other

    );
  }
}