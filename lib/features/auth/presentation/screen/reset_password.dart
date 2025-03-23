import 'package:blood_bank/core/constant/strings.dart';
import 'package:blood_bank/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/reset_password_controller.dart';

class ResetPassword extends GetView<ResetPasswordController> {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,

        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppStrings.logo,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              "تغيير كلمة المرور",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.otp,
              validator: null,
              labelText: "كود التحقق",
              iconData: Icons.password,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.password,
              validator: null,
              labelText: "كلمة المرور",
              iconData: Icons.lock,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.confirmPassword,
              validator: null,
              labelText: "تأكيد كلمة المرور",
              iconData: Icons.lock,
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                controller.resetPassword();
              },
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("ارسال", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
