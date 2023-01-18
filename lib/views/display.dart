import 'package:calculator_app/utils/colors.dart';
import 'package:calculator_app/utils/sizes.dart';
import 'package:calculator_app/utils/styles.dart';
import 'package:flutter/material.dart';

class NumberDisplay extends StatelessWidget {
  const NumberDisplay(
      {Key? key, required this.value, required this.calculatorString})
      : super(key: key);

  final String value;
  final String calculatorString;

  @override
  Widget build(BuildContext context) {
    return AppSize.displayBox(
      context: context,
      orientation: MediaQuery.of(context).orientation,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            calculatorString,
            style: AppStyles.textStyle,
          ),
        ],
      ),
    );
  }
}
