import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 颜色类适配黑暗模式
/// 适配黑暗模式步骤 添加之前可先查看是否已经添加该样式
/// 1 FXColorConfig类中添加颜色key， 例 static const String main_bg_key = 'main_bg';
/// 2 FXColorConfig类中的_colors集合中添加颜色key-value
///   例：main_bg_key: [FXColor.whiteColor, FXColor.colorText33],
///   key:main_bg_key是步骤1添加的key, value:数组 两个颜色值，0是正常模式颜色，1是黑暗模式颜色
/// 3 FXColor类添加get方法 对外访问
///   例 static get mainBg {
///        return FXColorConfig.getColor(FXColorConfig.main_bg_key);
///      }
class FXColor {
  /// 主色
  static get transparent {
    return FXColorConfig.getColor(FXColorConfig.main_bg_key);
  }

  /// 主色
  static get mainBg {
    return FXColorConfig.getColor(FXColorConfig.main_bg_key);
  }

  /// title 标题
  static get title {
    return FXColorConfig.getColor(FXColorConfig.title_key);
  }

  /// subTitle 副标题
  static get subTitle {
    return FXColorConfig.getColor(FXColorConfig.sub_title_key);
  }

  /// content 内容
  static get content {
    return FXColorConfig.getColor(FXColorConfig.content_key);
  }

  /// buttonBg 按钮背景
  static get buttonBg {
    return FXColorConfig.getColor(FXColorConfig.button_bg_key);
  }

  /// buttonTitle 按钮标题
  static get buttonTitle {
    return FXColorConfig.getColor(FXColorConfig.button_title_key);
  }

  /// buttonTitle 按钮标题
  static get divider {
    return FXColorConfig.getColor(FXColorConfig.divider_key);
  }

  /// 透明
  static const Color color_transparent = Colors.transparent;

  /// 主视图背景色
  static Color colorBackground =
      Get.isDarkMode ? Color(0xFFFFFFFF) : Color(0xFF2268F2);

  ///导航栏背景颜色
  static const Color color_nav_bar_bg = Color(0xFFFFFFFF);

  ///主要 分割线
  static const Color color_divider = Color(0xFFEDEDED);

  /// 进度颜色
  static const Color color_progress = Color(0xFFE6E7E9);

  /// 文本颜色
  static const Color color_text_33 = Color(0xFF333333);

  /// 文本颜色
  static const Color color_text_66 = Color(0xFFE6E7E9);

  /// 文本颜色
  static const Color color_text_99 = Color(0xFF999999);

  /// 文本颜色
  static const Color color_text_hint = Color(0xFFE6E7E9);

  /// 红色
  static const Color red_color = Color(0xFFFF3622);

  ///蓝色
  static const Color blue_color = Color(0xFF2268F2);

  ///白色
  static const Color white_color = Color(0xFFFFFFFF);

  /// 黑色
  static const Color black_color = Color(0xFF000000);

  ///绿色
  static const Color green_color = Color(0xFF06C88C);

  ///黄色
  static const Color yellow_color = Color(0xFFF5A623);
}

/// 颜色配置
class FXColorConfig {
  /// 颜色key
  static const String main_bg_key = 'main_bg';
  static const String title_key = 'title';
  static const String sub_title_key = 'sub_title';
  static const String content_key = 'content';
  static const String button_bg_key = 'button_bg';
  static const String button_title_key = 'button_title';
  static const String divider_key = 'divider';
  static const String transparent_key = 'transparent';

  /// 颜色值
  static const _colors = {
    main_bg_key: [FXColor.white_color, FXColor.color_text_33],
    title_key: [FXColor.color_text_33, FXColor.white_color],
    sub_title_key: [FXColor.color_text_33, FXColor.white_color],
    content_key: [FXColor.color_text_33, FXColor.white_color],
    button_bg_key: [FXColor.red_color, FXColor.yellow_color],
    button_title_key: [FXColor.color_text_33, FXColor.white_color],
    divider_key: [FXColor.color_text_33, FXColor.white_color],
    transparent_key: [FXColor.color_text_33, FXColor.color_transparent],
  };

  /// 取颜色值
  static Color getColor(String key) {
    final colors = _colors[key];
    if (colors == null) {
      return FXColor.color_text_33;
    }

    if (Get.isDarkMode == true) {
      if (colors.length == 2) {
        return colors[1];
      } else {
        return colors[0];
      }
    } else {
      return colors[0];
    }
  }
}
