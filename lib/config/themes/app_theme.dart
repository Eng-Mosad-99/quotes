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
    textTheme: const TextTheme(
      button: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
