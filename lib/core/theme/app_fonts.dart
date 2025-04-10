import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle get getAppFontType => GoogleFonts.poppins();

  static TextStyle get headlineTextStyle => getAppFontType;

  static TextStyle get bodyTextStyle => getAppFontType;

  static TextStyle get buttonTextStyle => getAppFontType;

  static TextStyle get appBarTextStyle => getAppFontType;

  static TextStyle get chipTextStyle => getAppFontType;

  static double get appBarTittleSize => 15.sp;
}
