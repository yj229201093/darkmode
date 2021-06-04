import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/theme/theme_config.dart';
import 'package:flutter_darkmode_demo/commons/utils/utils.dart';
import 'package:flutter_darkmode_demo/pages/login/login_page.dart';
import 'package:flutter_darkmode_demo/routes/app_pages.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '深色模式',
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: '/',
      getPages: YJPages.routes,
      defaultTransition:
          Utils.isIOS() ? Transition.native : Transition.rightToLeft,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      theme: ThemeConfig.lightTheme,
      home: LoginPage(),
    );
  }
}
