import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/app_colors.dart';

abstract class AppThemeManager {


  static ThemeData  getThemeData() => ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.black,

    appBarTheme: AppBarThemeData(

      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppColors.primary
    ),
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.primary
    )
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      backgroundColor: AppColors.primary,
      selectedItemColor: Colors.white,
      unselectedItemColor: AppColors.black,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
      fontFamily: "Janna",
      fontSize: 12,
      color: AppColors.black,
      fontWeight: FontWeight.w700
      )
      ),
    textTheme: TextTheme(

      /// headlineSmall  | 24.0 |
        headlineSmall: TextStyle(
          fontFamily: "Janna",
          color: AppColors.black,
          fontWeight: FontWeight.w700,
        ),

      /// titleLarge     | 20.0 |
      titleLarge: TextStyle(
        fontFamily: "Janna",
        color: AppColors.black,
        fontWeight: FontWeight.w700,
      ),

      /// bodyLarge      | 16.0 |
      bodyLarge: TextStyle(
        fontFamily: "Janna",
        color: AppColors.secondary,
        fontWeight: FontWeight.w700,
      ),

      /// bodyMedium     | 14.0 |
      bodyMedium: TextStyle(
        fontFamily: "Janna",
        color: AppColors.black,
        fontWeight: FontWeight.w700,
      ),


    )
  );
}