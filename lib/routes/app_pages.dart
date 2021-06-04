import 'package:flutter_darkmode_demo/pages/home/home_details_page.dart';
import 'package:flutter_darkmode_demo/pages/login/login_page.dart';
import 'package:flutter_darkmode_demo/pages/main/tab_bar_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class YJPages {
  static const INITIAL = YJRoutes.INITIAL;
  static final routes = [
    GetPage(
        name: YJRoutes.INITIAL,
        page: () => LoginPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: YJRoutes.INITIAL,
        page: () => LoginPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: YJRoutes.TAB_BAR,
        page: () => TabBarPage(),
        transition: Transition.fadeIn),
    GetPage(name: YJRoutes.HOME_DETAILS, page: () => HomeDetailsPage()),
  ];
}
