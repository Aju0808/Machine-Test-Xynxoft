import 'package:flutter/material.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_text_style.dart';

class MyTheme {
  static getThemeData() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      applyElevationOverlayColor: false,
      useMaterial3: true,
      primaryColor: AppColors.primaryColor,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
      ),
      textTheme: MyStyles.getTextTheme().apply(
        fontSizeFactor: 1.0,
      ),
    );
  }
}
