// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:calculator_app/widgets/buttons.dart';
import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({Key? key, required this.buttons, required this.onTap})
      : super(key: key);

  final List<String> buttons;
  final CalculatorButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: rowButtons(),
    );
  }

  List<Widget> rowButtons() {
    List<Widget> rowButtons = [];

    buttons.forEach((String buttonText) {
      rowButtons.add(
        Button(
          value: buttonText,
          onTap: onTap,
        ),
      );
    });

    return rowButtons;
  }
}
