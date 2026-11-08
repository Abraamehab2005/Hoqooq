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
  static TextStyle get onboardingAppBar => GoogleFonts.cairo(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );
  static TextStyle get onboardingBody => GoogleFonts.cairo(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    height: 1.5,
  );
  static TextStyle get onboardingDescrpion => GoogleFonts.cairo(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryText,
    height: 1.5,
  );
  static TextStyle get onboardingLawSourceChatTitle => GoogleFonts.cairo(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: AppColors.primary,
  );
  static TextStyle get onboardingLawSourceChatDescription => GoogleFonts.cairo(
    fontSize: 13,
    height: 1.5,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryText,
  );
  static TextStyle get customButton => GoogleFonts.cairo(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.surface,
  );
  static TextStyle get onboardingLogin => GoogleFonts.cairo(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
  static TextStyle get fieldLabel => GoogleFonts.cairo(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: AppColors.primary,
  );

  static TextStyle get fieldInput => GoogleFonts.cairo(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.primary,
  );

  static TextStyle get fieldError => GoogleFonts.cairo(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.error,
  );
}
