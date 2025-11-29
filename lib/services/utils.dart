import 'package:flutter/widgets.dart';

class Utilities {
  static bool isWeb(context) {
    return MediaQuery.of(context).size.width > 780;
  }

  static double width(context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(context) {
    return MediaQuery.of(context).size.height;
  }
}
