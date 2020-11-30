import 'package:flutter/cupertino.dart';

extension ScreenSize on BuildContext {
  double getWidthScreen() {
    return MediaQuery.of(this).size.width;
  }

  double getHeightScreen() {
    return MediaQuery.of(this).size.height;
  }
}
