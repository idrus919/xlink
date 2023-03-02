import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xlink/app/constants/color.dart';

ThemeData themeData = ThemeData(
  fontFamily: 'Quicksand',
  appBarTheme: appBarTheme,
  scaffoldBackgroundColor: primaryLightColor,
  textTheme: textTheme,
  primaryColor: primaryColor,
  primaryColorDark: primaryDarkColor,
  primaryColorLight: primaryLightColor,
);

AppBarTheme appBarTheme = AppBarTheme(
  color: whiteColor,
  systemOverlayStyle: uiLight,
  iconTheme: const IconThemeData(color: primaryDarkColor),
  elevation: 0,
  centerTitle: true,
  titleTextStyle: const TextStyle(
    fontSize: 18,
    color: primaryDarkColor,
    fontWeight: FontWeight.w700,
    fontFamily: 'Quicksand',
  ),
);

TextTheme textTheme = const TextTheme(
  displayLarge: TextStyle(
    color: primaryDarkColor,
    fontSize: 57,
    fontFamily: 'Quicksand',
  ),
  displayMedium: TextStyle(
    color: primaryDarkColor,
    fontSize: 45,
    fontFamily: 'Quicksand',
  ),
  displaySmall: TextStyle(
    color: primaryDarkColor,
    fontSize: 36,
    fontFamily: 'Quicksand',
  ),
  headlineLarge: TextStyle(
    color: primaryDarkColor,
    fontSize: 32,
    fontFamily: 'Quicksand',
  ),
  headlineMedium: TextStyle(
    color: primaryDarkColor,
    fontSize: 28,
    fontFamily: 'Quicksand',
  ),
  headlineSmall: TextStyle(
    color: primaryDarkColor,
    fontSize: 24,
    fontFamily: 'Quicksand',
  ),
  titleLarge: TextStyle(
    color: primaryDarkColor,
    fontSize: 22,
    fontFamily: 'Quicksand',
  ),
  titleMedium: TextStyle(
    color: primaryDarkColor,
    fontSize: 16,
    fontFamily: 'Quicksand',
  ),
  titleSmall: TextStyle(
    color: primaryDarkColor,
    fontSize: 14,
    fontFamily: 'Quicksand',
  ),
  labelLarge: TextStyle(
    color: primaryDarkColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Quicksand',
  ),
  labelMedium: TextStyle(
    color: primaryDarkColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Quicksand',
  ),
  labelSmall: TextStyle(
    color: primaryDarkColor,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    fontFamily: 'Quicksand',
  ),
  bodyLarge: TextStyle(
    color: primaryDarkColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Quicksand',
  ),
  bodyMedium: TextStyle(
    color: primaryDarkColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Quicksand',
  ),
  bodySmall: TextStyle(
    color: primaryDarkColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Quicksand',
  ),
);

SystemUiOverlayStyle uiDark = const SystemUiOverlayStyle(
  statusBarColor: primaryDarkColor,
  statusBarIconBrightness: Brightness.light,
  statusBarBrightness: Brightness.dark,
);

SystemUiOverlayStyle uiLight = const SystemUiOverlayStyle(
  statusBarColor: whiteColor,
  statusBarIconBrightness: Brightness.dark,
  statusBarBrightness: Brightness.light,
);