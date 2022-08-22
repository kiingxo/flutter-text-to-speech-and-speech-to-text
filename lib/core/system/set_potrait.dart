import 'package:flutter/services.dart';

//logic make app protrait
class SetPortrait {
  static void init() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  }
}
