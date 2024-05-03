import 'package:ecommerce/utlis/themes/elevated_button_theme.dart';
import 'package:ecommerce/utlis/themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue[600],
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButton.lightElevatedButtonTheme,


  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue[600],
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButton.darkElevatedButtonTheme,
    
  );
}