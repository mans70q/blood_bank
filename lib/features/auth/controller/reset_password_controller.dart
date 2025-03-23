import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/constant/strings.dart';

class ResetPasswordController extends GetxController {
  TextEditingController otp = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  void resetPassword() {
    Get.toNamed(AppStrings.loginRoute);
  }
}
