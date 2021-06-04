import 'package:flutter/cupertino.dart';
import 'package:flutter_darkmode_demo/commons/config/call_back.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/commons/config/style.dart';
import 'package:flutter_darkmode_demo/widgets/text_widget.dart';

import 'gesturedetector_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? margin;
  final double height;
  final double? width;
  final double radius;
  final TextStyle? textStyle;
  final Color? bgColor;
  final ClickCallBack? clickCallBack;

  const ButtonWidget(this.title,
      {Key? key,
      this.margin,
      this.height = 50,
      this.clickCallBack,
      this.radius = 30,
      this.textStyle,
      this.bgColor,
      this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetectorWidget(
      child: _buildButtonWidget(),
      clickCallBack: () {
        if (clickCallBack != null) {
          clickCallBack!();
        }
      },
    );
  }

  Widget _buildButtonWidget() {
    return Container(
      margin: margin ?? const EdgeInsets.only(left: 20, right: 20),
      height: height,
      width: width,
      decoration: Decorations.setBorderRadiusBoxDecoration(
          color: bgColor ?? FXColor.colorBackground,
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      alignment: Alignment.center,
      child: TextWidget(
        title,
        textStyle: textStyle ?? TextStyles.setTextStyle16AndWeightBold(),
      ),
    );
  }
}
