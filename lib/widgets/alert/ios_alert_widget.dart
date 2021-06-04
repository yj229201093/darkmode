import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_darkmode_demo/commons/config/color.dart';
import 'package:flutter_darkmode_demo/commons/config/font.dart';

class IosAlertWidget extends Dialog {
  String title = '';
  String message;
  String? confirm;
  VoidCallback? confirmCallback;
  VoidCallback? cancelCallback;

  IosAlertWidget(
      {required this.title,
      this.message = '',
      this.cancelCallback,
      this.confirmCallback,
      this.confirm = '确定'});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: Center(
        child: Container(
          margin: EdgeInsets.only(left: 40, right: 40),
          decoration: BoxDecoration(
            color: FXColor.mainBg,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              Text(
                title,
                style: TextStyle(color: FXColor.title, fontSize: FXFont.font16),
              ),
//            Padding(padding: EdgeInsets.all(5),),
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: FXColor.title, fontSize: FXFont.font16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                height: 1,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: FlatButton(
                            child: Text(
                              '取消',
                              style: TextStyle(
                                  color: FXColor.title,
                                  fontSize: FXFont.font16),
                            ),
                            onPressed: () {
                              cancelCallback!();
                            },
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    width: 1, color: Color(0xffEFEFF4))),
                          ),
                        )),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Text(
                          confirm!,
                          style: TextStyle(
                              color: FXColor.title, fontSize: FXFont.font16),
                        ),
                        onPressed: () {
                          confirmCallback!();
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
