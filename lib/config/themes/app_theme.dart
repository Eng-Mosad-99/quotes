import 'package:flutter/material.dart';
import 'package:quetes/core/utils/app_colors.dart';
import 'package:quetes/core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    hintColor: AppColors.hint,
    brightness: Brightness.light,
    fontFamily: AppStrings.fontFamily,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 20,
      ),
    ),
    textTheme:  const TextTheme(
      labelLarge:TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium:TextStyle(
        color: Colors.white,
        fontSize: 25,
        height: 1.3,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
