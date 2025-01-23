import 'package:flutter/material.dart';
import 'package:ui_design_ai/core/constants/colors.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    fontFamily: 'Kalpurush',
    primaryColor: AppColors.almondLight,
    scaffoldBackgroundColor: AppColors.almondLight,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.almondLight,
      elevation: 0,
      //iconTheme: IconThemeData(color: Colors.brown[900]),
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      scrolledUnderElevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle?>((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(
            fontSize: 12, // Set label size to 12
            fontWeight: FontWeight.w600,
            color: AppColors.black,
            overflow: TextOverflow.ellipsis,
          );
        }
        return TextStyle(
          fontSize: 12, // Set label size to 12
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        );
      }),
      indicatorColor: AppColors.alabasterLight, // Remove active tab background
      iconTheme: WidgetStateProperty.all(
        IconThemeData(
          color: AppColors.almondDark,
        ),
      ),
      overlayColor: WidgetStateProperty.all(
        AppColors.almondLight,
      ),
      // Remove active tab background
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      elevation: 0,
    ),
  );
}
