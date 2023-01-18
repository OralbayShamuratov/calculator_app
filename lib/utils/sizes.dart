import 'package:flutter/material.dart';

import 'colors.dart';

class AppSize {
  static EdgeInsets defaultPadding(Orientation orientation, BuildContext ctx) {
    final screen = MediaQuery.of(ctx).size;
    switch (orientation) {
      case Orientation.portrait:
        return EdgeInsets.symmetric(
          vertical: screen.height * 0.05,
          horizontal: screen.width * 0.05,
        );
      case Orientation.landscape:
        return EdgeInsets.symmetric(
          vertical: screen.height * 0.05,
          horizontal: screen.width * 0.1,
        );
    }
  }

  static const BoxDecoration decoration = BoxDecoration(
    color: AppColors.kDarkBackgroundColor,
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(25),
    ),
  );

  static Container keyboardBox(
      {required BuildContext context,
      required Orientation orientation,
      required Widget child}) {
    switch (orientation) {
      case Orientation.portrait:
        return Container(
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width,
          padding: AppSize.defaultPadding(orientation, context),
          decoration: AppSize.decoration,
          child: child,
        );
      case Orientation.landscape:
        return Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          padding: AppSize.defaultPadding(orientation, context),
          decoration: AppSize.decoration,
          child: child,
        );
    }
  }

  static Container displayBox(
      {required BuildContext context,
      required Orientation orientation,
      required Widget child}) {
    switch (orientation) {
      case Orientation.portrait:
        return Container(
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width,
          padding: AppSize.defaultPadding(orientation, context),
          child: child,
        );
      case Orientation.landscape:
        return Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          padding: AppSize.defaultPadding(orientation, context),
          child: child,
        );
    }
  }
}
