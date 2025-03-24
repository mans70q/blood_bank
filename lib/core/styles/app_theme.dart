import 'package:blood_bank/core/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      elevation: 0,
      foregroundColor: AppColors.white,
      centerTitle: true,
      titleTextStyle: const TextStyle(color: AppColors.white),
      iconTheme: const IconThemeData(color: AppColors.white),
      actionsIconTheme: const IconThemeData(color: AppColors.white),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Changed to transparent
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor:
            AppColors.primary, // Optional: for bottom nav bar
      ),
      toolbarHeight: kToolbarHeight, // Explicit height
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primary,
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.white,
    ),
  );
}
