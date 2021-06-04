import 'package:flutter/cupertino.dart';
import 'package:flutter_darkmode_demo/commons/config/call_back.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/commons/config/style.dart';
import 'package:flutter_darkmode_demo/widgets/text_widget.dart';

class LoginHeaderWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String otherText;
  final TextStyle? otherTextStyle;
  final ClickCallBack? clickCallBack;

  const LoginHeaderWidget(this.title, this.subTitle, this.otherText,
      {Key? key, this.otherTextStyle, this.clickCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 5),
          child: TextWidget(
            title,
            textStyle:
                TextStyles.setTextStyle16AndWeightBold(color: FXColor.title),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextWidget(
                subTitle,
                textStyle: TextStyles.setTextStyle12(color: FXColor.subTitle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: TextWidget(
                otherText,
                textStyle: TextStyles.setTextStyle12(color: FXColor.subTitle),
                clickCallBack: () {
                  if (clickCallBack != null) {
                    clickCallBack!();
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
