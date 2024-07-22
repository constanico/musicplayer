import 'package:flutter/material.dart';
import 'package:flutter_musicplayer/core/configs/theme/app_colors.dart';

class AppTheme {

  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor : AppColors.lightBackground,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1000)
        )
      )
    )
  );

    static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor : AppColors.darkBackground,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1000)
        )
      )
    )
  );
}