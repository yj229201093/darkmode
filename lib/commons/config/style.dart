import 'dart:ui';
import 'package:flutter/cupertino.dart';

import 'color.dart';
import 'font.dart';

/// 常用text样式，可扩展，多个地方使用(一般超过3个地方)就在添加常用样式，用可选参数，编译扩展
class TextStyles {
  /// 一
  /// 设置Text固定样式
  /// 使用get方法设置 外部调用TextStyles.listTitleOne
  static get listTitleOne {
    return TextStyle(
      fontSize: FXFont.font22,
      color: FXColor.title,
      fontWeight: FontWeight.bold,
    );
  }

  /// 二
  /// 使用final设置 外部调用TextStyles().listTitleTwo
  final TextStyle listTitleTwo = TextStyle(
    fontSize: FXFont.font22,
    color: FXColor.title,
    fontWeight: FontWeight.bold,
  );

  /// 三
  /// 内部切换模式的时候不会变化。 推荐使用 一货二
  final TextStyle listContent = TextStyle(
    fontSize: FXFont.font14,
    color: FXColor.title,
  );

  final TextStyle listExtra = TextStyle(
    fontSize: FXFont.font12,
    color: FXColor.title,
  );

  /// 使用参数，设置默认值
  static TextStyle setTextStyle(Color color, double fontSize,
      {FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight);
  }

  static TextStyle setTextStyle12(
      {Color color = FXColor.color_text_33,
      double fontSize = 14.0,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight);
  }

  static TextStyle setTextStyle16AndWeightBold(
      {Color color = FXColor.color_text_33,
      double fontSize = 20.0,
      FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight);
  }
}

// 常用装饰 圆角 半角 阴影等 可扩展，多个地方使用(一般超过3个地方)就在添加常用样式，用可选参数，编译扩展
class Decorations {
  static Decoration bottom = BoxDecoration(
    color: FXColor.colorBackground,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8), topRight: Radius.circular(8)),
  );

  ///设置圆角样式带圆角(不带分割线宽度)
  static BoxDecoration setBoxDecoration(double borderRadius,
      {Color color = FXColor.white_color}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
    );
  }

  /// 设置圆角 指定圆角位置 默认上左 上右
  static BoxDecoration setBorderRadiusBoxDecoration(
      {Color? color, BorderRadius? borderRadius}) {
    return BoxDecoration(
        color: color == null ? FXColor.colorBackground : color,
        borderRadius: borderRadius == null
            ? BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))
            : borderRadius);
  }
}
