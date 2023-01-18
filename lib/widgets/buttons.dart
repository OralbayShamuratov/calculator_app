import 'package:calculator_app/utils/colors.dart';
import 'package:calculator_app/utils/styles.dart';
import 'package:flutter/cupertino.dart';

typedef CalculatorButtonTapCallback = void Function(String buttonText);

class Button extends StatelessWidget {
  const Button({Key? key, required this.value, required this.onTap})
      : super(key: key);

  final String value;
  final CalculatorButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GestureDetector(
      onTap: () => onTap(value),
      child: Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.kDarkButtonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          value,
          style: AppStyles.buttonStyle(value, context, orientation),
        ),
      ),
    );
  }
}
