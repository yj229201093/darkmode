import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/commons/config/font.dart';
import 'package:flutter_darkmode_demo/commons/utils/utils.dart';

import 'ios_alert_widget.dart';

String title = "YJ提示";

class CustomAlert {
  static showConfirmDialog(BuildContext context, String content,
      {String confirm = "确定",
      String cancel = "取消",
      Function? confirmCallback,
      Function? cancelCallback}) {
    showDialog(
        context: context,
        builder: (context) {
          if (Utils.isIOS()) {
            return IosAlertWidget(
              title: title,
              message: content,
              cancelCallback: () {
                Navigator.of(context).pop();
                if (cancelCallback != null) {
                  cancelCallback();
                }
              },
              confirmCallback: () {
                Navigator.of(context).pop();
                if (confirmCallback != null) {
                  confirmCallback();
                }
              },
              confirm: confirm,
            );
          } else {
            return AlertDialog(
              title: Text(
                title,
                style: TextStyle(color: FXColor.title, fontSize: FXFont.font16),
              ),
              content: Text(
                content,
                style: TextStyle(color: FXColor.title, fontSize: FXFont.font16),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text(confirm,
                      style: TextStyle(
                          color: FXColor.title,
                          fontSize: FXFont.font16,
                          fontWeight: FontWeight.normal)),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (confirmCallback != null) {
                      confirmCallback();
                    }
                  },
                ),
                FlatButton(
                  child: Text(cancel,
                      style: TextStyle(
                          color: FXColor.title,
                          fontSize: FXFont.font16,
                          fontWeight: FontWeight.normal)),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (cancelCallback != null) {
                      cancelCallback();
                    }
                  },
                )
              ],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
            );
          }
        });
  }

  /// 单个按钮提示
  static showSingleConfirmDialog(BuildContext context, String content,
      {String confirmStr = '知道了',
      bool dismissible = true,
      Function? confirmCallback,
      Function? cancelCallback}) {
    showDialog(
        barrierDismissible: dismissible,
        context: context,
        builder: (context) {
          if (Utils.isIOS()) {
            return IosAlertWidget(
              title: title,
              message: content,
              cancelCallback: () {
                Navigator.of(context).pop();
              },
              confirmCallback: () {
                Navigator.of(context).pop();
                if (confirmCallback != null) {
                  confirmCallback();
                }
              },
              confirm: confirmStr,
            );
          } else {
            return AlertDialog(
              title: Text(
                title,
                style: TextStyle(color: FXColor.title, fontSize: FXFont.font16),
              ),
              content: Text(
                content,
                style: TextStyle(color: FXColor.title, fontSize: FXFont.font16),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text(confirmStr,
                      style: TextStyle(
                          color: FXColor.title,
                          fontSize: FXFont.font16,
                          fontWeight: FontWeight.normal)),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (confirmCallback != null) {
                      confirmCallback();
                    }
                  },
                ),
              ],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
            );
          }
        });
  }
}
