import 'package:flutter/material.dart';

class Utilities {
  static final Utilities _utilities = Utilities._internal();

  factory Utilities() {
    return _utilities;
  }

  Utilities._internal();

  double get screenHeight =>
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;

  double get screenWidth =>
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
}
