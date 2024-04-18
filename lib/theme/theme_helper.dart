import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fhedyapp/core/utils/size_utils.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generatorif (!_supportedCustomColor.containsKey(_appTheme)){  throw Exception(               "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");      } //return theme from map
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator if (!_supportedColorScheme.containsKey(_appTheme)){   throw Exception(                "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");       }  //return theme from map
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.green50,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.green50.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: appTheme.lime80047.withOpacity(0.05),
          elevation: 10,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.green50.withOpacity(0.05),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.black9000f,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodySmall: TextStyle(
          color: appTheme.black9000f.withOpacity(0.16),
          fontSize: 10.fSize,
          fontFamily: 'General Sans',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.deepOrange300,
          fontSize: 36.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.deepOrange300,
          fontSize: 30.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray700.withOpacity(0.5),
          fontSize: 24.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.deepOrange300,
          fontSize: 12.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray500,
          fontSize: 10.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: appTheme.deepOrange300,
          fontSize: 8.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w800,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray700.withOpacity(0.5),
          fontSize: 20.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray600,
          fontSize: 16.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.deepOrange300,
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0X4C43480A),
    primaryContainer: Color(0XFFDBEBD8),

    // On colors(text colors)
    onPrimary: Color(0XCCFFFFFF),
    onPrimaryContainer: Color(0XFF272727),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blackf
  Color get black9000f => Color(0X0F000000);

  // Blue
  Color get blueA400 => Color(0XFF1877F2);
  Color get blueA40001 => Color(0XFF2084FF);

  // BlueGray
  Color get blueGray400 => Color(0XFF888888);

  // DeepOrange
  Color get deepOrange300 => Color(0XFFEE8E66);
  Color get deepOrangeA100 => Color(0XFFFFA866);

  // Gray
  Color get gray100 => Color(0XFFF8F4F0);
  Color get gray10001 => Color(0XFFF7FAEF);
  Color get gray10033 => Color(0X33FAF5EF);
  Color get gray400 => Color(0XFFADB9A8);
  Color get gray500 => Color(0XFF999F96);
  Color get gray600 => Color(0XFF6F736D);
  Color get gray700 => Color(0XFF676C65);

  // Grayc
  Color get gray504c => Color(0X4CF5F9FD);

  // Green
  Color get green10087 => Color(0X87CBE1CD);
  Color get green50 => Color(0XFFE1FAE5);

  // LightGreen
  Color get lightGreen300 => Color(0XFFBDC583);
  Color get lightGreen50 => Color(0XFFF2FAEB);

  // Lime
  Color get lime700 => Color(0XFFCFA01C);
  Color get lime80047 => Color(0X47B1850B);
  Color get lime90011 => Color(0X117A8128);

  // Limee
  Color get lime8001e => Color(0X1E8A922F);

  // Red
  Color get red500 => Color(0XFFEA4335);

  // Teal
  Color get teal300 => Color(0XFF40C391);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
