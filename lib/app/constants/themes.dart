import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xlink/app/constants/color.dart';

const double defaultSize = 16;

ThemeData themeData = ThemeData(
  fontFamily: 'Quicksand',
  appBarTheme: appBarTheme,
  scaffoldBackgroundColor: primaryLightColor,
  textTheme: textTheme,
  primaryColor: primaryColor,
  primaryColorDark: primaryDarkColor,
  primaryColorLight: primaryLightColor,
  elevatedButtonTheme: ElevatedButtonThemeData(style: elevatedButtonStyle),
  outlinedButtonTheme: OutlinedButtonThemeData(style: outlinedButtonStyle),
);

AppBarTheme appBarTheme = AppBarTheme(
  color: whiteColor,
  systemOverlayStyle: uiLight,
  iconTheme: const IconThemeData(color: primaryDarkColor),
  elevation: 0,
  centerTitle: true,
  toolbarHeight: 78,
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

ButtonStyle get elevatedButtonStyle {
  return ElevatedButton.styleFrom(
    padding: insetSymmetric(16, 12),
    backgroundColor: primaryColor,
    foregroundColor: whiteColor,
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius(50),
    ),
    elevation: 0,
    shadowColor: Colors.transparent,
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: whiteColor,
      fontFamily: 'Quicksand',
    ),
  );
}

ButtonStyle get outlinedButtonStyle {
  return OutlinedButton.styleFrom(
    padding: insetSymmetric(16, 12),
    foregroundColor: primaryDarkColor,
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius(50),
    ),
    elevation: 0,
    side: BorderSide(color: primaryColor),
    shadowColor: Colors.transparent,
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: primaryColor,
      fontFamily: 'Quicksand',
    ),
  );
}

EdgeInsets inset([double? size]) {
  return EdgeInsets.all(size ?? defaultSize);
}

EdgeInsets insetHorizontal([double? size]) {
  return EdgeInsets.symmetric(horizontal: size ?? defaultSize);
}

EdgeInsets insetSymmetric(double horizontal, double vertical) {
  return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
}

EdgeInsets insetVertical([double? size]) {
  return EdgeInsets.symmetric(vertical: size ?? defaultSize);
}

EdgeInsets insetLTRB(double? left, double? top, double? right, double? bottom) {
  return EdgeInsets.fromLTRB(left ?? 0, top ?? 0, right ?? 0, bottom ?? 0);
}

BorderRadius borderRadius([double? radius]) {
  return BorderRadius.circular(radius ?? defaultSize);
}

Radius radius([double? radius]) {
  return Radius.circular(radius ?? 5);
}

Radius radiusEliptical([double? x, double? y]) {
  return Radius.elliptical(x ?? defaultSize, y ?? defaultSize);
}

SizedBox height([double? size]) {
  return SizedBox(height: size ?? defaultSize);
}

SizedBox width([double? size]) {
  return SizedBox(width: size ?? defaultSize);
}