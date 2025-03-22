import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';

class AppTheme {
  
  static final lightTheme = ThemeData(
  primaryColor: AppColors.primay,
  scaffoldBackgroundColor: AppColors.lightBackground,
  brightness: Brightness.light,
  fontFamily: 'Satoshi',
  inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 0.4,
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 0.4,
          )
        )
      ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.primay,
    elevation: 0,
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    )
    )
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
  ),
  );

  static final darkTheme = ThemeData(
  primaryColor: AppColors.primay,
  scaffoldBackgroundColor: AppColors.darkBackground,
  brightness: Brightness.dark,
  fontFamily: 'Satoshi',
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.primay,
    elevation: 0,
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    )
    )
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
  ),
  );
}
