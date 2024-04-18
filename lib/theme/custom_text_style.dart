import 'package:flutter/material.dart';
import 'package:fhedyapp/core/utils/size_utils.dart';
import 'package:fhedyapp/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallActorBlack9000f =>
      theme.textTheme.bodySmall!.actor.copyWith(
        color: appTheme.black9000f.withOpacity(0.2),
        fontSize: 12.fSize,
      );
  // Label text style
  static get labelLargeBlack9000f => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black9000f.withOpacity(0.4),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
    fontWeight: FontWeight.w600,
  );
  static get titleSmallDeeporange300 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.deepOrange300,
    fontSize: 15.fSize,
    fontWeight: FontWeight.w600,
  );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray500,
  );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700.withOpacity(0.5),
      );
  static get labelLargePoppinsGray700 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.gray700.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeffee8e66 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFEE8E66),
        fontWeight: FontWeight.w800,
      );
  static get labelMedium66000000 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0X66000000),
        fontWeight: FontWeight.w700,
      );
  static get labelMedium66000000Medium => theme.textTheme.labelMedium!.copyWith(
        color: Color(0X66000000),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlack9000f => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black9000f.withOpacity(0.4),
      );
  static get labelMediumDeeporange300 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.deepOrange300,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGeneralSansDeeporange300 =>
      theme.textTheme.labelMedium!.generalSans.copyWith(
        color: appTheme.deepOrange300,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGeneralSansDeeporange300Medium =>
      theme.textTheme.labelMedium!.generalSans.copyWith(
        color: appTheme.deepOrange300,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumSFUIDisplayBlack9000f =>
      theme.textTheme.labelMedium!.sFUIDisplay.copyWith(
        color: appTheme.black9000f.withOpacity(0.4),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumffee8e66 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFFEE8E66),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumffee8e66Medium => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFFEE8E66),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumffee8e66_1 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFFEE8E66),
      );
  static get labelSmall9 => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get labelSmallBlack9000f => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black9000f.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get labelSmallLightgreen50 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.lightGreen50,
        fontSize: 9.fSize,
      );
  static get labelSmallMedium => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelSmallOnPrimaryContainer =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w700,
      );
  // Manrope text style
  static get manropeGray700 => TextStyle(
        color: appTheme.gray700.withOpacity(0.5),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).manrope;
  static get manropeLightgreen50 => TextStyle(
        color: appTheme.lightGreen50,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w800,
      ).manrope;
  // Title text style
  static get titleLargeDeeporange300 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepOrange300,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumDeeporange300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrange300,
      );
  static get titleMediumDeeporange300Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrange300.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGreen50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green50.withOpacity(0.67),
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get sFUIDisplay {
    return copyWith(
      fontFamily: 'SF UI Display',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get actor {
    return copyWith(
      fontFamily: 'Actor',
    );
  }

  TextStyle get generalSans {
    return copyWith(
      fontFamily: 'General Sans',
    );
  }
}
