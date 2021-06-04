import 'package:flutter/cupertino.dart';
import 'package:flutter_darkmode_demo/commons/config/call_back.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/commons/config/font.dart';
import 'package:flutter_darkmode_demo/commons/config/style.dart';
import 'package:flutter_darkmode_demo/widgets/text_widget.dart';

import 'gesturedetector_widget.dart';
import 'image_widget.dart';
import 'message_red_widget.dart';

// 图片方向 上 下 左 右
enum ImageDirection { LEFT, TOP, RIGHT, BOTTOM }

class ImageTextWidget extends StatelessWidget {
  final double height; // Container imageHeight+text+space
  final double width; // Container image or text max width
  final String imageName;
  final double imageHeight; // image
  final double imageWidth; // image
  final BoxFit fit;
  final String text;
  final TextStyle? textStyle;
  final int redCount; // 0 不显示 默认0  ImageDirection.IMAGE_TOP才有
  final ClickCallBack? clickCallBack;
  final ImageDirection imageDirection;
  final double spacing; //间距 图片和文本之间的间距

  const ImageTextWidget(this.imageName, this.text,
      {Key? key,
      this.height = 90,
      this.width = 70,
      this.fit = BoxFit.cover,
      this.textStyle,
      this.redCount = 0,
      this.imageHeight = 50,
      this.imageWidth = 50,
      this.clickCallBack,
      this.imageDirection = ImageDirection.TOP,
      this.spacing = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetectorWidget(
      child: Container(
//        color: Colors.blue,
        child: _buildImageTextWidget(),
      ),
      clickCallBack: () {
        if (clickCallBack != null) {
          clickCallBack!();
        }
      },
    );
  }

  /// 图片文本
  Widget _buildImageTextWidget() {
    switch (imageDirection) {
      case ImageDirection.LEFT:
        return _buildLeftImageRightTextWidget();
        break;
      case ImageDirection.TOP:
        return _buildTopImageBottomTextWidget();
        break;
      case ImageDirection.RIGHT:
        return _buildRightImageLeftTextWidget();
        break;
      case ImageDirection.BOTTOM:
        return _buildBottomImageTopTextWidget();
        break;
    }
    return _buildTopImageBottomTextWidget();
  }

  /// 左图片右文本
  Widget _buildLeftImageRightTextWidget() {
    return Row(
      children: [
        _buildImageWidget(),
        Padding(padding: EdgeInsets.only(left: spacing)),
        _buildTextWidget()
      ],
    );
  }

  /// 上图片下文本加右上角红点提示
  Widget _buildTopImageBottomTextWidget() {
    return Container(
      width: width,
      height: height,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildImageWidget(),
              Padding(padding: EdgeInsets.only(top: spacing)),
              _buildTextWidget(),
            ],
          ),
          redCount == 0
              ? Container()
              : (Align(
                  alignment: Alignment.topRight,
                  child: MessageRedWidget(count: redCount),
                )),
        ],
      ),
    );
  }

  /// 右图片左文本
  Widget _buildRightImageLeftTextWidget() {
    return Row(
      children: [
        _buildTextWidget(),
        Padding(padding: EdgeInsets.only(left: spacing)),
        _buildImageWidget(),
      ],
    );
  }

  /// 下图片上文本
  Widget _buildBottomImageTopTextWidget() {
    return Column(
      children: [
        _buildTextWidget(),
        Padding(padding: EdgeInsets.only(bottom: spacing)),
        _buildImageWidget()
      ],
    );
  }

  /// 图片组件
  Widget _buildImageWidget() {
    return Container(
      alignment: Alignment.center,
      child: ImageWidget(
        imageName: imageName,
        height: imageHeight,
        width: imageWidth,
        fit: fit,
      ),
    );
  }

  /// 文本组件
  Widget _buildTextWidget() {
    return TextWidget(
      text,
      textStyle:
          textStyle ?? TextStyles.setTextStyle(FXColor.title, FXFont.font12),
    );
  }
}
