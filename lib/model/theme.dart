import 'package:flutter/material.dart';

import 'package:codex_woltiensis_demo/model/colors.dart';

class CustomTheme {
  static ThemeData get themeDataLight {
    Color textColor = Colors.black87;
    Color subTextColor = Colors.black54;
    return ThemeData(
      colorScheme: ColorScheme(
        primary: redAlert.withOpacity(0.9),
        secondary: greenValid,

        surface: const Color.fromRGBO(247, 247, 248, 1),
        background: blueNeutral.withOpacity(0.8),

        error: redAlert,

        onPrimary: Colors.white,
        onSecondary: Colors.white,

        onSurface: orangeWarning,
        onBackground: Colors.black,
        onError: Colors.white,

        brightness: Brightness.light,
      ),

      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: textColor,
        ),
        titleMedium: TextStyle(
          color: textColor,
        ),
        titleSmall: TextStyle(
          color: textColor,
        ),
        bodyLarge: TextStyle(
          color: subTextColor,
        ),
        bodyMedium: TextStyle(
          color: subTextColor,
        ),
        bodySmall: TextStyle(
          color: subTextColor,
        ),
      ),

      scaffoldBackgroundColor: Colors.white,

      cardTheme: CardTheme(
        color: orangeWarning.shade50,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),

      iconTheme: const IconThemeData(
        color: Colors.black87,
        fill: 0.5,
      ),
      brightness: Brightness.light,


      // other

    );
  }
}