import 'package:flutter/material.dart';
import 'package:movies_app/main.dart';

class Constants {
  static var mediaQuery =
      MediaQuery.of(navigatorKey.currentState!.context).size;
  static var theme = Theme.of(navigatorKey.currentState!.context);
}
