import 'package:flutter/material.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_fonts.dart';

class MyStyles {
  ///text theme
  static TextTheme getTextTheme() => TextTheme(
        bodyLarge: (AppFonts.bodyTextStyle).copyWith(
            fontWeight: FontWeight.bold, color: AppColors.primaryColor),
        bodyMedium:
            (AppFonts.bodyTextStyle).copyWith(color: AppColors.primaryColor),
        bodySmall:
            (AppFonts.bodyTextStyle).copyWith(color: AppColors.primaryColor),
      );
}
