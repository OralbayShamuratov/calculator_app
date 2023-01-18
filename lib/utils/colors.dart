import 'package:flutter/material.dart';

class AppColors {
  static const Color kWhiteColor = Color(0xFFFFFFFF);

  static const Color kBlackColor = Color(0xFF060709);

  static const Color kDarkBackgroundColor = Color(0xFF343a40);

  static const Color kDarkButtonColor = Color(0xFF212529);

  static const Color kBlueButtonColor = Color(0xFFbde0fe);

  static const Color kOrangeButtonColor = Color(0xFFe76f51);

  static Color kEqualColor(BuildContext context, Orientation orientation) {
    switch (orientation) {
      case Orientation.portrait:
        return AppColors.kOrangeButtonColor;
      case Orientation.landscape:
        return AppColors.kBlueButtonColor;
    }
  }
}
