import 'package:flutter/material.dart';

class AppTextFieldTheme {
  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          errorMaxLines: 3,
          prefixIconColor: Colors.grey,
          suffixIconColor: Colors.grey,
          errorStyle: TextStyle(color: Colors.red, fontStyle: FontStyle.normal),
          labelStyle: TextStyle(color: Colors.black),
          hintStyle: TextStyle(color: Colors.black),
          floatingLabelStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.black, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.orange, width: 2),
          ));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          errorMaxLines: 3,
          prefixIconColor: Colors.grey,
          suffixIconColor: Colors.grey,
          errorStyle: TextStyle(color: Colors.red, fontStyle: FontStyle.normal),
          labelStyle: TextStyle(color: Colors.white),
          hintStyle: TextStyle(color: Colors.white),
          floatingLabelStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            borderSide: BorderSide(color: Colors.orange, width: 2),
          ));
}
