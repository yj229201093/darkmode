import 'package:flutter_darkmode_demo/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  void pushToMainPage() {
    Get.toNamed(YJRoutes.TAB_BAR);
  }

  void pushToCodeLoginPage() {}

  void pushToForgetPasswordPage() {}

  void pushToRegisterPage() {}
}
