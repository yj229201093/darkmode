import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/commons/theme/theme_config.dart';
import 'package:flutter_darkmode_demo/commons/utils/utils.dart';
import 'package:flutter_darkmode_demo/controller/home/home_controller.dart';
import 'package:flutter_darkmode_demo/widgets/alert/custom_alert.dart';
import 'package:flutter_darkmode_demo/widgets/appbar_widget.dart';
import 'package:flutter_darkmode_demo/widgets/image_text_widget.dart';
import 'package:flutter_darkmode_demo/widgets/text_widget.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeC = Get.put(HomeController());
    return Scaffold(
      appBar: AppBarWidget(
        '深色模式适配',
        backgroundColor: FXColor.mainBg,
        titleColor: FXColor.title,
        actions: [
          Container(
            child: IconButton(
              icon: Icon(Icons.qr_code),
              color: FXColor.title,
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            Padding(padding: const EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageTextWidget(
                  '001',
                  '跟随系统',
                  clickCallBack: () {
                    Utils.logs("跟随系统");
                    ThemeConfig.changeThemeMode(themeMode: ThemeMode.system);
                  },
                ),
                ImageTextWidget(
                  '002',
                  '正常模式',
                  redCount: 2,
                  clickCallBack: () {
                    ThemeConfig.changeThemeMode(themeMode: ThemeMode.light);
                  },
                ),
                ImageTextWidget(
                  '001',
                  '深色模式',
                  redCount: 99,
                  clickCallBack: () {
                    ThemeConfig.changeThemeMode(themeMode: ThemeMode.dark);
                  },
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageTextWidget(
                  '001',
                  '测试数据',
                  clickCallBack: () {
                    Utils.logs("采购订单");
                  },
                  imageDirection: ImageDirection.LEFT,
                ),
                ImageTextWidget(
                  '002',
                  '测试数据',
                  imageDirection: ImageDirection.BOTTOM,
                ),
                ImageTextWidget(
                  '001',
                  '测试数据',
                  imageDirection: ImageDirection.RIGHT,
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20)),
            Padding(padding: const EdgeInsets.only(top: 20)),
            TextWidget(
              '点击下一步',
              clickCallBack: () {
                CustomAlert.showConfirmDialog(context, '欢迎来到深色模式世界',
                    confirmCallback: () {
                  homeC.pushToHomeDetails();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
