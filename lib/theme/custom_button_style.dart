import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientLightGreenToLimeDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.lightGreen300,
            appTheme.lime700,
          ],
        ),
      );
  static BoxDecoration get gradientLightGreenToLimeTL16Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.lime80047,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -6,
              16,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.lightGreen300,
            appTheme.lime700,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToGrayDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.lime8001e,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -12,
              14,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(0.5),
            appTheme.gray10033,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outline => OutlinedButton.styleFrom(
        backgroundColor: appTheme.gray504c,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
