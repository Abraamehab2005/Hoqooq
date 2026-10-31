import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoqooq/core/constants/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle get splashCaption => GoogleFonts.cairo(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryText,
  );

  static TextStyle get splashTitle => GoogleFonts.cairo(
    fontSize: 50,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static TextStyle get bodyEn => GoogleFonts.cairo(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryText,
  );
  static TextStyle get bodyAr => GoogleFonts.cairo(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
}
