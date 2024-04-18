import 'package:flutter/material.dart';
import 'package:fhedyapp/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange300.withOpacity(0.1),
      );
  static BoxDecoration get fillDeeporange300 => BoxDecoration(
        color: appTheme.deepOrange300.withOpacity(0.2),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green50,
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime700.withOpacity(0.12),
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.3),
      );
  static BoxDecoration get fillOnPrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.2),
      );
  static BoxDecoration get fillOnPrimary2 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );

  // Gradient decorations
  static BoxDecoration get gradientGreenToGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.green50.withOpacity(0),
            appTheme.green50,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(0.5),
            appTheme.gray10033,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.4),
        boxShadow: [
          BoxShadow(
            color: appTheme.lime90011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -8,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: appTheme.gray10033.withOpacity(0.5),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(0.3),
          width: 2.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: appTheme.lime90011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -8,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: appTheme.gray10033,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -10,
              30,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
