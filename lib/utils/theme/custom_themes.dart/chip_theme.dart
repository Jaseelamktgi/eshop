import 'package:flutter/material.dart';

class AppChipTheme {
  static ChipThemeData lightChipTheme = const ChipThemeData(
    checkmarkColor: Colors.white,
    selectedColor: Colors.blue,
    disabledColor: Colors.grey,  
    labelStyle: TextStyle(color: Colors.black),
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
  );

   static ChipThemeData darkChipTheme = const ChipThemeData(
    checkmarkColor: Colors.white,
    selectedColor: Colors.blue,
    disabledColor: Colors.grey,  
    labelStyle: TextStyle(color: Colors.white),
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
  );
}