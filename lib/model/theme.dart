import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get themeDataLight {
    const Color _primaryColor = Color.fromRGBO(242, 242, 242, 1); // 60% of the ui
    const Color _backgroundColor = Color.fromRGBO(194, 222, 201,1); // 60% of the ui
    const Color _secondaryColor = Color.fromRGBO(3, 140, 37, 1); // 30% of the ui
    const Color _secondaryColorLight = Color.fromRGBO(145, 253, 145,1); // 30% of the ui
    const Color _accentColor = Color.fromRGBO(255, 128, 128, 1); // 10% of the ui

    const Color _textColor = Colors.black87;//Color.fromRGBO(0, 0, 0, 1);

    return ThemeData(

      primaryColor: _primaryColor,
      scaffoldBackgroundColor: _backgroundColor,
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: _textColor),
        displayMedium: TextStyle(color: _textColor),
        displaySmall: TextStyle(color: _textColor),
        headlineMedium: TextStyle(color: _textColor),
        headlineSmall: TextStyle(color: _textColor),
        titleLarge: TextStyle(color: _textColor),
        titleMedium: TextStyle(color: _textColor),
        titleSmall: TextStyle(color: _textColor),
        bodyLarge: TextStyle(color: _textColor),
        bodyMedium: TextStyle(color: _textColor),
        bodySmall: TextStyle(color: _textColor),
        labelLarge: TextStyle(color: _textColor),
      ),
      dividerColor: _textColor.withOpacity(0.5),
      buttonTheme: const ButtonThemeData(
        buttonColor: _accentColor,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: const ColorScheme(
        primary: _primaryColor,
        secondary: _secondaryColor,
        surface: Colors.white,
        background: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: _textColor,
        onBackground: _textColor,
        onError: Colors.white,
        brightness: Brightness.light,
      ).copyWith(background: Colors.white).copyWith(secondary: _accentColor),
      cardTheme: CardTheme(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side : const BorderSide(
            color: Colors.grey,
            width: 1.75,
          ),
        ),
        color: _primaryColor,
        shadowColor: Colors.grey.withOpacity(0.3),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: _primaryColor,
        selectedIconTheme: const IconThemeData(
          color: _accentColor,
        ),
        selectedLabelTextStyle: const TextStyle(
          color: _accentColor,
          fontWeight: FontWeight.bold,
        ),
        unselectedIconTheme: const IconThemeData(
          color: _secondaryColor,
        ),
        unselectedLabelTextStyle: TextStyle(
          color: _textColor.withOpacity(0.6),
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  static ThemeData get themeDataOriginal {
    const Color _primaryColor = Color.fromRGBO(161, 0, 9, 0.7); // 60% of the ui
    const Color _backgroundColor = Color.fromRGBO(237, 38, 50, 1); // 60% of the ui
    const Color _secondaryColor = Color.fromRGBO(242,137,7,1); // 30% of the ui
    const Color _secondaryColorLight = Color.fromRGBO(242,203,5,1); // 30% of the ui
    const Color _accentColor = Color.fromRGBO(242,203,5,1); // 10% of the ui

    const Color _textColor = Colors.black87;//Color.fromRGBO(0, 0, 0, 1);


    return ThemeData(

      primaryColor: _primaryColor,
      scaffoldBackgroundColor: _backgroundColor,
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: _textColor),
        displayMedium: TextStyle(color: _textColor),
        displaySmall: TextStyle(color: _textColor),
        headlineMedium: TextStyle(color: _textColor),
        headlineSmall: TextStyle(color: _textColor),
        titleLarge: TextStyle(color: _textColor),
        titleMedium: TextStyle(color: _textColor),
        titleSmall: TextStyle(color: _textColor),
        bodyLarge: TextStyle(color: _textColor),
        bodyMedium: TextStyle(color: _textColor),
        bodySmall: TextStyle(color: _textColor),
        labelLarge: TextStyle(color: _textColor),
      ),
      dividerColor: _textColor.withOpacity(0.5),
      buttonTheme: const ButtonThemeData(
        buttonColor: _accentColor,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: const ColorScheme(
        primary: _primaryColor,
        secondary: _secondaryColor,
        surface: Colors.white,
        background: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: _textColor,
        onBackground: _textColor,
        onError: Colors.white,
        brightness: Brightness.light,
      ).copyWith(background: Colors.white).copyWith(secondary: _accentColor),
      cardTheme: CardTheme(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side : const BorderSide(
            color: Colors.grey,
            width: 1.75,
          ),
        ),
        color: Colors.white,
        shadowColor: Colors.black87.withOpacity(0.8),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: _primaryColor,
        selectedIconTheme: const IconThemeData(
          color: _accentColor,
        ),
        selectedLabelTextStyle: const TextStyle(
          color: _accentColor,
          fontWeight: FontWeight.bold,
        ),
        unselectedIconTheme: const IconThemeData(
          color: _secondaryColor,
        ),
        unselectedLabelTextStyle: TextStyle(
          color: _textColor.withOpacity(0.6),
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

