import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/widgets/appbar_widget.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        '我的',
        backgroundColor: FXColor.mainBg,
        titleColor: FXColor.title,
      ),
      backgroundColor: FXColor.mainBg,
    );
  }
}
