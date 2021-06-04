import 'package:flutter/material.dart';
import 'package:get/get.dart';

///主题色配置 统一配置，细节的地方单独判断处理
class ThemeConfig {
  /// 正常模式主题设置
  static ThemeData lightTheme = ThemeData(brightness: Brightness.light);

  /// 黑暗模式主题设置
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);

  ///设置黑暗模式
  static void changeThemeMode({ThemeMode themeMode = ThemeMode.system}) {
    /// 主题类型
    Get.changeThemeMode(themeMode);

    /// 注意样式设置
//    switch (themeMode) {
//      case ThemeMode.system:
//        if (Get.isDarkMode == true) {
//          Get.changeTheme(darkTheme);
//        } else {
//          Get.changeTheme(lightTheme);
//        }
//        break;
//      case ThemeMode.dark:
//        Get.changeTheme(darkTheme);
//        break;
//      case ThemeMode.light:
//        Get.changeTheme(lightTheme);
//        break;
//    }
  }
}
