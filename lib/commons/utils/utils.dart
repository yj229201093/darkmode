import 'package:flutter/cupertino.dart';
import 'package:get/get_utils/src/platform/platform.dart';

import '../../main.dart';

class Utils {
  ///打印
  static logs(String msg) {

  }

  ///判断平台
  static bool isIOS() {
    if (GetPlatform.isIOS) {
      return true;
    } else {
      return false;
    }
  }

  ///获取本地图片名称
  static String getImagePath(String name, {String format: 'png'}) {
    return 'assets/images/$name.$format';
  }
}
