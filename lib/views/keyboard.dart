import 'package:calculator_app/models/calculator_buttons.dart';
import 'package:calculator_app/utils/sizes.dart';
import 'package:calculator_app/widgets/buttons.dart';
import 'package:calculator_app/widgets/rowButtons.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key, required this.onTap}) : super(key: key);

  final CalculatorButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AppSize.keyboardBox(
      context: context,
      orientation: MediaQuery.of(context).orientation,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: Keys.getButtons(MediaQuery.of(context).orientation)
            .map((buttons) => RowButtons(
                  buttons: buttons,
                  onTap: onTap,
                ))
            .toList(),
      ),
    );
  }
}
