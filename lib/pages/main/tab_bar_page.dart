import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/controller/main/tab_bar_controller.dart';
import 'package:flutter_darkmode_demo/pages/dynamic/dynamic_page.dart';
import 'package:flutter_darkmode_demo/pages/home/home_page.dart';
import 'package:flutter_darkmode_demo/pages/message/message_page.dart';
import 'package:flutter_darkmode_demo/pages/mine/mine_page.dart';
import 'package:get/get.dart';

class TabBarPage extends StatelessWidget {
  final pages = [HomePage(), DynamicPage(), MessagePage(), MinePage()];
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      activeIcon: Icon(Icons.home),
      label: '首页',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.dynamic_feed),
      activeIcon: Icon(Icons.dynamic_feed),
      label: '动态',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      activeIcon: Icon(Icons.message),
      label: '消息',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      activeIcon: Icon(Icons.person),
      label: '我的',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabBarController>(
        init: TabBarController(),
        builder: (tabC) {
          return Scaffold(
            body: pages[tabC.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabC.currentIndex,
              elevation: 5,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: FXColor.color_text_99,
              unselectedLabelStyle: TextStyle(color: FXColor.color_text_99),
              unselectedFontSize: 10,
              selectedFontSize: 10,
              selectedItemColor: FXColor.title,
              selectedLabelStyle: TextStyle(color: FXColor.title),
              items: bottomNavItems,
              onTap: (index) {
                tabC.changePage(index);
              },
            ),
          );
        });
  }
}
