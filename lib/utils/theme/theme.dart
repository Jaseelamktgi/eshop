import 'package:eshop/utils/theme/custom_themes.dart/appbar_theme.dart';
import 'package:eshop/utils/theme/custom_themes.dart/bottomsheet_theme.dart';
import 'package:eshop/utils/theme/custom_themes.dart/checkbox_theme.dart';
import 'package:eshop/utils/theme/custom_themes.dart/chip_theme.dart';
import 'package:eshop/utils/theme/custom_themes.dart/elevated_btn_theme.dart';
import 'package:eshop/utils/theme/custom_themes.dart/outlined_btn_theme.dart';
import 'package:eshop/utils/theme/custom_themes.dart/text_field_theme.dart';
import 'package:eshop/utils/theme/custom_themes.dart/text_theme.dart';
import 'package:flutter/material.dart';

class AppThemes {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: AppbarTheme.lightAppbarTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: AppElevatedBtnTheme.lightElevatedBtnTheme,
    outlinedButtonTheme: AppOutlinedBtnTheme.lightOutlinedBtnTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: AppbarTheme.darkAppbarTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: AppElevatedBtnTheme.darkElevatedBtnTheme,
    outlinedButtonTheme: AppOutlinedBtnTheme.darkOutlinedBtnTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,
  );
}
