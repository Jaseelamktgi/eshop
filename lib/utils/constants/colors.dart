import 'package:flutter/material.dart';

class AppColors {
  // App basic colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff); 

  // App text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white; 

  // App background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Backgorund container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color darkContainer = Colors.white;

  // App button colors
  static const Color primaryButton = Color(0xFF4b68ff);
  static const Color secondaryButton = Color(0xFF6C757D);
  static const Color disabledButton = Color(0xFFC4C4C4);

  // App border colors
  static const Color primaryBorder = Color(0xFFD9D9D9);
  static const Color secondaryBorder = Color(0xFFE6E6E6);

  // Errors & Validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black  = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey  = Color(0xFF939393);
  static const Color grey  = Color(0xFFE0E0E0);

   // Gradients
  static const LinearGradient linerGradient = LinearGradient(
    begin: Alignment(0.0,0.0),
    end: Alignment(0.707,-0.707),
    colors: [
      Color(0xFFFF9A9A),
      Color(0xFFFAD0C4),  
      Color(0xFFFAD0C4),
    ],
  );

}