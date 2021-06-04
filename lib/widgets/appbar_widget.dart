import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/config/call_back.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/commons/config/font.dart';
import 'package:get/get.dart';

class AppBarWidget extends AppBar {
  final String? text;
  final double? fontSize;
  final bool centerTitle;
  final BuildContext? context;
  final List<Widget>? actions;
  final Color titleColor;
  final Color backgroundColor;
  final IconData leadingIcon;
  final ClickCallBack? clickCallBack;

  /// AppBar没有返回键时，应该主动置为false
  /// 否则会默认创建一个空白返回区域，点击有效果
  final bool automaticallyImplyLeading;

  AppBarWidget(
    this.text, {
    Key? key,
    this.fontSize = 14,
    this.automaticallyImplyLeading = false,
    this.centerTitle = true,
    this.context,
    this.actions,
    this.titleColor = FXColor.color_text_33,
    this.backgroundColor = FXColor.white_color,
    this.leadingIcon = Icons.arrow_back,
    this.clickCallBack,
  }) : super(
          key: key,
          title: Text(
            text ?? "",
            style: TextStyle(
                color: FXColor.title,
                fontWeight: FontWeight.bold,
                fontSize: fontSize ?? FXFont.font18),
          ),
          backgroundColor:
              Get.isDarkMode == true ? FXColor.mainBg : backgroundColor,
          elevation: 0,
          centerTitle: centerTitle,
          actions: actions,
          brightness:
              Get.isDarkMode == true ? Brightness.dark : Brightness.light,
          automaticallyImplyLeading: automaticallyImplyLeading,
          leading: context == null
              ? null
              : IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Get.isDarkMode == true ? FXColor.title : titleColor,
                  onPressed: () {
                    if (clickCallBack != null) {
                      clickCallBack();
                    }
                    Get.back();
                  },
                ),
        );
}
