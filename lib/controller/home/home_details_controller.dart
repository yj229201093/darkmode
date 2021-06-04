import 'package:flutter_darkmode_demo/commons/utils/utils.dart';
import 'package:get/get.dart';

class HomeDetailsController extends GetxController {
  var name;
  var number;
  List<String> userInfoList = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    var map = Get.arguments as Map;
    Utils.logs(Get.arguments.toString());
    name = map["name"];
    number = map["number"];
    update();
  }

  void onRefresh() {
    userInfoList.clear();
    for (int i = 0; i < 20; i++) {
      userInfoList.add("1");
    }
    update();
  }
}
