import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/commons/config/string.dart';
import 'package:flutter_darkmode_demo/commons/config/style.dart';
import 'package:flutter_darkmode_demo/commons/theme/theme_config.dart';
import 'package:flutter_darkmode_demo/controller/login/login_controller.dart';
import 'package:flutter_darkmode_demo/widgets/appbar_widget.dart';
import 'package:flutter_darkmode_demo/widgets/button_widget.dart';
import 'package:flutter_darkmode_demo/widgets/login_header_widget.dart';
import 'package:flutter_darkmode_demo/widgets/text_widget.dart';
import 'package:flutter_darkmode_demo/widgets/textfield_widget.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginC = Get.put(LoginController());
    return Scaffold(
      appBar: AppBarWidget(
        '',
        backgroundColor: FXColor.mainBg,
        titleColor: FXColor.title,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LoginHeaderWidget(
            FXString.dl_title,
            FXString.dl_no_account,
            FXString.dl_register,
            clickCallBack: () {
              ThemeConfig.changeThemeMode(themeMode: ThemeMode.dark);
            },
          ),
          Padding(padding: const EdgeInsets.only(top: 50)),
          TextFieldWidget(
            hintText: FXString.dl_input_account,
          ),
          TextFieldWidget(
            hintText: FXString.dl_input_password,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  FXString.dl_code_login,
                  textStyle: TextStyles.setTextStyle12(color: FXColor.subTitle),
                  clickCallBack: () {
                    loginC.pushToCodeLoginPage();
                  },
                ),
                TextWidget(
                  FXString.dl_forget_password,
                  textStyle: TextStyles.setTextStyle12(color: FXColor.subTitle),
                  clickCallBack: () {
//                    ThemeConfig.changeThemeMode(themeMode: ThemeMode.light);
                    loginC.pushToForgetPasswordPage();
                  },
                ),
              ],
            ),
          ),
          ButtonWidget(
            FXString.dl_login,
            bgColor: FXColor.buttonBg,
            margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
            textStyle: TextStyles.setTextStyle(FXColor.subTitle, 18,
                fontWeight: FontWeight.bold),
            clickCallBack: () {
              loginC.pushToMainPage();
            },
          ),
        ],
      ),
    );
  }
}
