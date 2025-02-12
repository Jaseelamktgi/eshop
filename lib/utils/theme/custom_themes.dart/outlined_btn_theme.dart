import 'package:flutter/material.dart';

class AppOutlinedBtnTheme {
  AppOutlinedBtnTheme._();

  static final lightOutlinedBtnTheme = OutlinedButtonThemeData(         
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),    
  );

  static final darkOutlinedBtnTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.blueAccent),
      textStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),    
  ) ;
} 