import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

class ThemeHelper {
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  PrimaryColors _getThemeColors() {
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.");
    }

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  ThemeData _getThemeData() {
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.");
    }

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary.withOpacity(0.39),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.blue800,
            width: 2.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primary.withOpacity(0.8),
      ),
    );
  }
  PrimaryColors themeColor() => _getThemeColors();

  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900.withOpacity(0.55),
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueA700,
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 42.fSize,
          fontFamily: 'Azonix',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 36.fSize,
          fontFamily: 'Azonix',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 32.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.lightBlueA700,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 10.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray800,
          fontSize: 20.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900.withOpacity(0.6),
          fontSize: 16.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray700.withOpacity(0.84),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF946CC3),
    primaryContainer: Color(0XFF1E1E1E),
    secondaryContainer: Color(0X19946CC3),

    // Error colors
    errorContainer: Color(0XFF00769D),
    onError: Color(0XFF50A5AE),

    // On colors(text colors)
    onPrimary: Color(0XFF0F172A),
    onPrimaryContainer: Color(0XFFB9B9B9),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue800 => Color(0XFF0A66C2);
  Color get blue900 => Color(0XFF184E8E);
  Color get blueA700 => Color(0XFF246BFD);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray100A8 => Color(0XA8D6D6D6);
  Color get blueGray400 => Color(0XFF8D8D8D);

  // DeepPurpleFc
  Color get deepPurple300Fc => Color(0XFC9D74E8);

  // Gray
  Color get gray100 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFEEEEEE);
  Color get gray300 => Color(0XFFE2E2E2);
  Color get gray50 => Color(0XFFFAF6FF);
  Color get gray500 => Color(0XFF8F8F8F);
  Color get gray50001 => Color(0XFF999999);
  Color get gray600 => Color(0XFF7F7F7F);
  Color get gray700 => Color(0XFF595961);
  Color get gray800 => Color(0XFF454545);
  Color get gray80001 => Color(0XFF3F3F3F);
  Color get gray80044 => Color(0X443C3C3C);
  Color get gray900A2 => Color(0XA218191E);

  // LightBlue
  Color get lightBlueA700 => Color(0XFF0093FF);

  // Orange
  Color get orange300 => Color(0XFFFEB546);

  // Pink
  Color get pink10066 => Color(0X66FFB2CA);

  // Red
  Color get red500 => Color(0XFFEB4335);
  Color get redA700 => Color(0XFFFF0000);
  Color get redA70001 => Color(0XFFEE0404);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
