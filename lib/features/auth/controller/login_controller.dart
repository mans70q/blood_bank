import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/constant/strings.dart';

class LoginController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  void login() {
    Get.offAllNamed(AppStrings.layoutRoute);
  }

  void forgetPassword() {}

  void rememberMeToggle(value) {
    rememberMe = !rememberMe;
    update();
  }
}
