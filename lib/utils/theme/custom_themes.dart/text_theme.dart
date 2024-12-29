import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle().copyWith(
      color: Colors.black.withValues(alpha: 0.5),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: TextStyle().copyWith(
      color: Colors.black.withValues(alpha: 0.5),
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
    labelSmall: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: TextStyle().copyWith(
      color: Colors.white.withValues(alpha: 0.5),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: TextStyle().copyWith(
      color: Colors.white.withValues(alpha: 0.5),
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
    labelSmall: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ),
  );
}
