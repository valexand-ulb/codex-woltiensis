import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get themeDataLight {
    const Color primaryColor =
        Color.fromRGBO(242, 242, 242, 1); // 60% of the ui
    const Color backgroundColor =
        Color.fromRGBO(194, 222, 201, 1); // 60% of the ui
    const Color secondaryColor =
        Color.fromRGBO(3, 140, 37, 1); // 30% of the ui
    const Color secondaryColorLight =
        Color.fromRGBO(145, 253, 145, 1); // 30% of the ui
    const Color accentColor =
        Color.fromRGBO(255, 128, 128, 1); // 10% of the ui

    const Color textColor = Colors.black87; //Color.fromRGBO(0, 0, 0, 1);

    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: textColor),
        displayMedium: TextStyle(color: textColor),
        displaySmall: TextStyle(color: textColor),
        headlineMedium: TextStyle(color: textColor),
        headlineSmall: TextStyle(color: textColor),
        titleLarge: TextStyle(color: textColor),
        titleMedium: TextStyle(color: textColor),
        titleSmall: TextStyle(color: textColor),
        bodyLarge: TextStyle(color: textColor),
        bodyMedium: TextStyle(color: textColor),
        bodySmall: TextStyle(color: textColor),
        labelLarge: TextStyle(color: textColor),
      ),
      dividerColor: textColor.withOpacity(0.5),
      buttonTheme: const ButtonThemeData(
        buttonColor: accentColor,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: const ColorScheme(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: Colors.white,
        background: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: textColor,
        onBackground: textColor,
        onError: Colors.white,
        brightness: Brightness.light,
      ).copyWith(background: Colors.white).copyWith(secondary: accentColor),
      cardTheme: CardTheme(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(
            color: Colors.grey,
            width: 1.75,
          ),
        ),
        color: primaryColor,
        shadowColor: Colors.grey.withOpacity(0.3),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: primaryColor,
        selectedIconTheme: const IconThemeData(
          color: accentColor,
        ),
        selectedLabelTextStyle: const TextStyle(
          color: accentColor,
          fontWeight: FontWeight.bold,
        ),
        unselectedIconTheme: const IconThemeData(
          color: secondaryColor,
        ),
        unselectedLabelTextStyle: TextStyle(
          color: textColor.withOpacity(0.6),
          fontWeight: FontWeight.normal,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: secondaryColorLight.withOpacity(0.2),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: secondaryColor, width: 1.4),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: textColor.withOpacity(0.6), width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.grey.withOpacity(0.6), width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintStyle: TextStyle(
          color: textColor.withOpacity(0.6),
        ),
      ),
    );
  }

  static ThemeData get themeDataOriginal {
    const Color primaryColor = Color.fromRGBO(161, 0, 9, 0.7); // 60% of the ui
    const Color backgroundColor =
        Color.fromRGBO(237, 38, 50, 1); // 60% of the ui
    const Color secondaryColor =
        Color.fromRGBO(242, 137, 7, 1); // 30% of the ui
    const Color secondaryColorLight =
        Color.fromRGBO(242, 203, 5, 1); // 30% of the ui
    const Color accentColor = Color.fromRGBO(242, 203, 5, 1); // 10% of the ui

    const Color textColor = Colors.black87; //Color.fromRGBO(0, 0, 0, 1);

    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: textColor),
        displayMedium: TextStyle(color: textColor),
        displaySmall: TextStyle(color: textColor),
        headlineMedium: TextStyle(color: textColor),
        headlineSmall: TextStyle(color: textColor),
        titleLarge: TextStyle(color: textColor),
        titleMedium: TextStyle(color: textColor),
        titleSmall: TextStyle(color: textColor),
        bodyLarge: TextStyle(color: textColor),
        bodyMedium: TextStyle(color: textColor),
        bodySmall: TextStyle(color: textColor),
        labelLarge: TextStyle(color: textColor),
      ),
      dividerColor: textColor.withOpacity(0.5),
      buttonTheme: const ButtonThemeData(
        buttonColor: accentColor,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: const ColorScheme(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: Colors.white,
        background: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: textColor,
        onBackground: textColor,
        onError: Colors.white,
        brightness: Brightness.light,
      ).copyWith(background: Colors.white).copyWith(secondary: accentColor),
      cardTheme: CardTheme(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(
            color: Colors.grey,
            width: 1.75,
          ),
        ),
        color: Colors.white,
        shadowColor: Colors.black87.withOpacity(0.8),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: primaryColor,
        selectedIconTheme: const IconThemeData(
          color: accentColor,
        ),
        selectedLabelTextStyle: const TextStyle(
          color: accentColor,
          fontWeight: FontWeight.bold,
        ),
        unselectedIconTheme: const IconThemeData(
          color: secondaryColor,
        ),
        unselectedLabelTextStyle: TextStyle(
          color: textColor.withOpacity(0.6),
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
