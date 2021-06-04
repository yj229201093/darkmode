import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/widgets/text_widget.dart';

class MessageRedWidget extends StatelessWidget {
  final int count;
  final bool toAnimate;
  final BadgeShape shape;
  final Color badgeColor;
  final double border;
  final TextStyle? style;

  const MessageRedWidget(
      {Key? key,
      this.count = 0,
      this.toAnimate = false,
      this.shape = BadgeShape.circle,
      this.badgeColor = Colors.red,
      this.border = 8,
      this.style})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Badge(
      toAnimate: toAnimate,
      shape: shape,
      badgeColor: badgeColor,
      borderRadius: BorderRadius.circular(border),
      badgeContent: TextWidget(
        '${count}',
        textStyle: style ?? TextStyle(color: Colors.white, fontSize: 11),
        clickCallBack: () {},
      ),
    );
  }
}
