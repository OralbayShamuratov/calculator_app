// ignore_for_file: constant_identifier_names

import 'dart:math';

import 'number_formatter.dart';

class Calculations {
  static const PERIOD = '.';
  static const MULTIPLY = '*';
  static const SUBTRACT = '-';
  static const ADD = '+';
  static const DIVIDE = '/';
  static const UPGRADE = '^';
  static const CLEAR = 'C';
  static const EQUAL = '=';
  static const PROCENT = '%';
  static const OPERATIONS = [
    Calculations.ADD,
    Calculations.MULTIPLY,
    Calculations.SUBTRACT,
    Calculations.DIVIDE,
  ];
  static const FUNCTIONS = [
    Calculations.CLEAR,
    Calculations.PROCENT,
    Calculations.UPGRADE,
  ];

  static double add(double a, double b) => a + b;

  static double subtract(double a, double b) => a - b;

  static double divide(double a, double b) => a / b;

  static double multiply(double a, double b) => a * b;

  static double upgrade(double a, double b) => pow(a, b).toDouble();

  static double procent(double a) => a / 100;
}

class Calculator {
  static String parseString(String text) {
    List<String> numbersToAdd;
    double a, b, result;
    if (text.contains(Calculations.ADD)) {
      numbersToAdd = text.split(Calculations.ADD);
      a = double.parse(numbersToAdd[0]);
      b = double.parse(numbersToAdd[1]);

      result = Calculations.add(a, b);
    } else if (text.contains(Calculations.MULTIPLY)) {
      numbersToAdd = text.split(Calculations.MULTIPLY);
      a = double.parse(numbersToAdd[0]);
      b = double.parse(numbersToAdd[1]);

      result = Calculations.multiply(a, b);
    } else if (text.contains(Calculations.DIVIDE)) {
      numbersToAdd = text.split(Calculations.DIVIDE);
      a = double.parse(numbersToAdd[0]);
      b = double.parse(numbersToAdd[1]);

      result = Calculations.divide(a, b);
    } else if (text.contains(Calculations.SUBTRACT)) {
      numbersToAdd = text.split(Calculations.SUBTRACT);
      a = double.parse(numbersToAdd[0]);
      b = double.parse(numbersToAdd[1]);

      result = Calculations.subtract(a, b);
    } else if (text.contains(Calculations.UPGRADE)) {
      numbersToAdd = text.split(Calculations.UPGRADE);
      a = double.parse(numbersToAdd[0]);
      b = double.parse(numbersToAdd[1]);
      result = Calculations.upgrade(a, b);
    } else if (text.endsWith(Calculations.PROCENT)) {
      numbersToAdd = text.split(Calculations.PROCENT);
      a = double.parse(numbersToAdd[0]);
      result = Calculations.procent(a);
    } else {
      return text;
    }
    return NumberFormatter.format(result.toString());
  }

  static String addPeriod(String calculatorString) {
    if (calculatorString.isEmpty) {
      return calculatorString = '0${Calculations.PERIOD}';
    }

    RegExp exp = RegExp(r"\d\.");
    Iterable<Match> matches = exp.allMatches(calculatorString);
    int maxMatches = Calculator.includesOperation(calculatorString) ? 2 : 1;

    return matches.length == maxMatches
        ? calculatorString
        : calculatorString += Calculations.PERIOD;
  }

  static bool includesOperation(String calculatorString) {
    for (var operation in Calculations.OPERATIONS) {
      if (calculatorString.contains(operation)) {
        return true;
      }
    }

    return false;
  }
}
