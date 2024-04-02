import 'package:flutter/material.dart';
import 'package:movies_app/main.dart';

class Constants {
  static var mediaQuery =
      MediaQuery.of(navigatorKey.currentState!.context).size;
  static var theme = Theme.of(navigatorKey.currentState!.context);
  static const String apiKey ="58fbbde800a73313a28f6200af7f2652";
  static const String baseUrl ="developer.themoviedb.org";

}
