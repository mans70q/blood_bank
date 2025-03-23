import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/strings.dart';

class ForgetPasswordController extends GetxController {
  var phoneController = TextEditingController();

  void forgetPassword() {
    Get.toNamed(AppStrings.resetPasswordRoute);
  }

  @override
  void onClose() {
    phoneController.dispose();
    super.onClose();
  }
}
