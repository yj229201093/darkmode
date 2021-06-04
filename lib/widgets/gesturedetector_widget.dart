import 'package:flutter/cupertino.dart';
import 'package:flutter_darkmode_demo/commons/config/call_back.dart';

class GestureDetectorWidget extends StatelessWidget {
  final Widget child;
  final ClickCallBack? clickCallBack;

  const GestureDetectorWidget(
      {Key? key, required this.child, this.clickCallBack})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        if (clickCallBack != null) {
          clickCallBack!();
        }
      },
    );
  }
}
