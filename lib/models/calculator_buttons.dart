import 'package:flutter/material.dart';

import 'calculator.dart';

class Keys {
  static final landscapeKeys = [
    [
      Calculations.DIVIDE,
      '9',
      '6',
      '3',
      Calculations.CLEAR,
    ],
    [
      Calculations.MULTIPLY,
      '8',
      '5',
      '2',
      Calculations.PROCENT,
    ],
    [
      Calculations.ADD,
      '7',
      '4',
      '1',
      Calculations.UPGRADE,
    ],
    [
      Calculations.SUBTRACT,
      '00',
      '0',
      Calculations.PERIOD,
      Calculations.EQUAL,
    ],
  ];

  static final portraitKeys = [
    [
      Calculations.CLEAR,
      Calculations.UPGRADE,
      Calculations.PROCENT,
      Calculations.DIVIDE
    ],
    [
      '7',
      '8',
      '9',
      Calculations.MULTIPLY,
    ],
    [
      '4',
      '5',
      '6',
      Calculations.SUBTRACT,
    ],
    [
      '1',
      '2',
      '3',
      Calculations.ADD,
    ],
    [
      '00',
      '0',
      Calculations.PERIOD,
      Calculations.EQUAL,
    ],
  ];

  static List getButtons(Orientation orientation) {
    switch (orientation) {
      case Orientation.landscape:
        return Keys.landscapeKeys;
        break;
      case Orientation.portrait:
        return Keys.portraitKeys;
        break;
    }
  }
}
