import 'package:calculator_app/models/calculator.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class AppStyles {
  static Color getColor(
      String value, BuildContext context, Orientation orientation) {
    if (Calculations.OPERATIONS.contains(value)) {
      return AppColors.kOrangeButtonColor;
    } else if (Calculations.FUNCTIONS.contains(value)) {
      return AppColors.kBlueButtonColor;
    } else if (value == Calculations.EQUAL) {
      return AppColors.kEqualColor(context, orientation);
    } else {
      return AppColors.kWhiteColor;
    }
  }

  static TextStyle buttonStyle(
          String value, BuildContext context, Orientation orientation) =>
      TextStyle(
        color: AppStyles.getColor(value, context, orientation),
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins',
        fontSize: 18,
      );

  static const TextStyle textStyle = TextStyle(
      color: AppColors.kWhiteColor,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
      fontSize: 32);

  static const TextStyle resultStyle = TextStyle(
    color: AppColors.kWhiteColor,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins',
    fontSize: 48,
  );
}
