import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/controller/home/home_details_controller.dart';
import 'package:flutter_darkmode_demo/widgets/appbar_widget.dart';
import 'package:flutter_darkmode_demo/widgets/text_widget.dart';
import 'package:get/get.dart';

class HomeDetailsPage extends StatelessWidget {
  final homeDetailsC = Get.put(HomeDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        '首页详情',
        context: context,
        backgroundColor: FXColor.mainBg,
        titleColor: FXColor.title,
      ),
      body: GetBuilder<HomeDetailsController>(
          init: HomeDetailsController(),
          builder: (_) {
            return ListView.builder(
                itemCount: homeDetailsC.userInfoList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: TextWidget(homeDetailsC.name),
                      subtitle: TextWidget(homeDetailsC.number));
                });
          }),
    );
  }
}
