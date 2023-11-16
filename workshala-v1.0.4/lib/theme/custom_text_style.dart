import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargePoppinsPrimary =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumInterGray500 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumInterGray500_1 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumMulish => theme.textTheme.bodyMedium!.mulish.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumMulishGray50001 =>
      theme.textTheme.bodyMedium!.mulish.copyWith(
        color: appTheme.gray50001,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary15 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.58),
        fontSize: 14.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack90012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppinsBlack900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallPoppinsBlack9009 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 9.fSize,
      );
  static get bodySmallPoppinsBluegray400 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoBlack900 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.59),
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoBlack90012 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontSize: 12.fSize,
      );
  static get bodySmallRobotoBlack90012_1 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontSize: 12.fSize,
      );
  // Display text style
  static get displayMediumPrimaryContainer =>
      theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get displayMediumRobotoWhiteA700 =>
      theme.textTheme.displayMedium!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 50.fSize,
        fontWeight: FontWeight.w600,
      );
  static get displaySmallPrimary => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get displaySmallPrimary_1 => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineLargeLatoPrimary =>
      theme.textTheme.headlineLarge!.lato.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 33.fSize,
      );
  static get headlineSmallInterWhiteA700 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallLatoGray700 =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeInter => theme.textTheme.labelLarge!.inter.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeInterPrimaryBold =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMulishBlack900 =>
      theme.textTheme.labelLarge!.mulish.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMulishBlueA700 =>
      theme.textTheme.labelLarge!.mulish.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeRobotoPrimary =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumPoppins =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPoppinsBlack900 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.61),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsGray900a2 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.gray900A2,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumRalewayOnError =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLarge23 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
      );
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
      );
  static get titleLargePoppinsBlack900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsLightblueA700 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargePrimary21 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 21.fSize,
      );
  static get titleLargePrimary23 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 23.fSize,
      );
  static get titleLargeRobotoPrimary =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900Bold18 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlueA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterGray80001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterGray80001Medium =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterRedA700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterWhiteA700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumPoppinsBlack900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumPoppinsBlack90018 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumPoppinsBlack900Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlue800 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blue800,
      );
  static get titleMediumPoppinsBlue800Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.blue800,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray700.withOpacity(0.84),
      );
  static get titleMediumPoppinsWhiteA700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumRalewayBlack900 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRalewayWhiteA700 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack90015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallBlack900Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlue800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue800,
      );
  static get titleSmallBlue800Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue800,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterBlack900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterBlack900Medium =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterBlack900Medium15 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterBlack900Medium_1 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterOnPrimaryContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallInterPrimaryMedium =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLatoGray50001 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallMulishBlack900 =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallMulishBlack900Medium =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMulishWhiteA700 =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRobotoWhiteA700 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get azonix {
    return copyWith(
      fontFamily: 'Azonix',
    );
  }

  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
