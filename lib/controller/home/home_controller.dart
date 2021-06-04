import 'package:flutter_darkmode_demo/commons/utils/utils.dart';
import 'package:flutter_darkmode_demo/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var name = "";
  var number = "";

  void pushToHomeDetails() {
    Get.toNamed(YJRoutes.HOME_DETAILS,
        arguments: {"name": "深色模式", "number": "8888"});
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Utils.logs("onInit");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    Utils.logs("onClose");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Utils.logs("onReady");
  }
}
