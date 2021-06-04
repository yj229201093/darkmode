import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/config/call_back.dart';
import 'package:flutter_darkmode_demo/commons/config/style.dart';

import 'gesturedetector_widget.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final ClickCallBack? clickCallBack;
  const TextWidget(
    this.text, {
    Key? key,
    this.textStyle,
    this.clickCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return clickCallBack == null
        ? _buildTextWidget()
        : GestureDetectorWidget(
            child: _buildTextWidget(),
            clickCallBack: () {
              if (clickCallBack != null) {
                clickCallBack!();
              }
            },
          );
  }

  Widget _buildTextWidget() {
    return Text(
      text,
      style: textStyle ?? TextStyles().listContent,
    );
  }
}
