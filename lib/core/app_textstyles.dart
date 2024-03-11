import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get inter20SemiBold => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 20,
        fontWeight: InterFontWeight.semiBold.fontWeight,
      );

  static TextStyle get inter16Medium => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 16,
        fontWeight: InterFontWeight.medium.fontWeight,
      );

  static TextStyle get inter14SemiBold => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 14,
        fontWeight: InterFontWeight.semiBold.fontWeight,
      );

  static TextStyle get inter13Medium => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 13,
        fontWeight: InterFontWeight.medium.fontWeight,
      );

  static TextStyle get inter12SemiBold => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 12,
        fontWeight: InterFontWeight.semiBold.fontWeight,
      );

  static TextStyle get inter12Medium => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 12,
        fontWeight: InterFontWeight.medium.fontWeight,
      );

  static TextStyle get inter11Regular => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 11,
        fontWeight: InterFontWeight.regular.fontWeight,
      );

  static TextStyle get inter11Medium => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 11,
        fontWeight: InterFontWeight.medium.fontWeight,
      );

  static TextStyle get inter10SemiBold => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 10,
        fontWeight: InterFontWeight.semiBold.fontWeight,
      );

  static TextStyle get inter10Regular => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 10,
        fontWeight: InterFontWeight.regular.fontWeight,
      );
  static TextStyle get inter10Medium => GoogleFonts.getFont("Inter").copyWith(
        fontSize: 10,
        fontWeight: InterFontWeight.medium.fontWeight,
      );
}

enum InterFontWeight {
  thin,
  extraLight,
  light,
  regular,
  medium,
  semiBold,
  bold,
  extraBold,
  black,
}

extension InterFontWeightExtension on InterFontWeight {
  String get description => name;

  FontWeight get fontWeight {
    switch (this) {
      case InterFontWeight.thin:
        return FontWeight.w100;
      case InterFontWeight.extraLight:
        return FontWeight.w200;
      case InterFontWeight.light:
        return FontWeight.w300;
      case InterFontWeight.regular:
        return FontWeight.w400;
      case InterFontWeight.medium:
        return FontWeight.w500;
      case InterFontWeight.semiBold:
        return FontWeight.w600;
      case InterFontWeight.bold:
        return FontWeight.w700;
      case InterFontWeight.extraBold:
        return FontWeight.w800;
      case InterFontWeight.black:
        return FontWeight.w900;
    }
  }
}
