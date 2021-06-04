import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/widgets/appbar_widget.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        '消息',
        backgroundColor: FXColor.mainBg,
        titleColor: FXColor.title,
      ),
      backgroundColor: FXColor.mainBg,
    );
  }
}
