import 'package:flutter/material.dart';

import 'package:codex_woltiensis_demo/model/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData get themeDataLight {
    Color textColor = Colors.black87;
    Color subTextColor = Colors.black54;
    Color surfaceColor = const Color.fromRGBO(247, 247, 248, 1);
    return ThemeData(
      colorScheme: ColorScheme(
        primary: redAlert.withOpacity(0.9),
        secondary: greenValid,

        surface: surfaceColor,
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

      brightness: Brightness.light,

      fontFamily: GoogleFonts.inter().fontFamily,

      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: const Color.fromRGBO(247, 247, 248, 1),
        selectedIconTheme: IconThemeData(
          color: redAlert.withOpacity(0.9),
        ),
        unselectedIconTheme: IconThemeData(
          color: subTextColor,
        ),
        selectedLabelTextStyle: TextStyle(
          color: redAlert.withOpacity(0.9),
        ),
        unselectedLabelTextStyle: TextStyle(
          color: subTextColor,
        ),
        labelType: NavigationRailLabelType.selected,
      ),

    );
  }
}