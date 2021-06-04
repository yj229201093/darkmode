import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final EdgeInsetsGeometry? margin;
  final double height;

  const TextFieldWidget(
      {Key? key, this.hintText, this.margin, this.height = 50})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(left: 20, right: 20),
      height: height,
      child: TextField(
        decoration: InputDecoration(hintText: hintText ?? '请输入'),
      ),
    );
  }
}
