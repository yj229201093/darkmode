import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/utils/utils.dart';

class ImageWidget extends StatelessWidget {
  final String imageName;
  final double height;
  final double width;
  final BoxFit fit;

  const ImageWidget(
      {Key? key,
      required this.imageName,
      this.height = double.infinity,
      this.width = double.infinity,
      this.fit = BoxFit.fill})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Utils.getImagePath(imageName),
      height: height,
      width: width,
      fit: fit,
    );
  }
}
