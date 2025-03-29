import 'package:blood_bank/core/constant/strings.dart';
import 'package:blood_bank/core/widgets/custom_text_form_field.dart';
import 'package:blood_bank/features/auth/presentation/screen/register_screen.dart';
import 'package:blood_bank/features/auth/presentation/widget/custom_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/login_controller.dart';
import 'forget_password.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return GetBuilder<LoginController>(
      builder:
          (controller) => Scaffold(
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
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Text(
                    "تسجيل الدخول",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    controller: controller.phoneController,
                    validator: null,
                    labelText: "الجوال",
                    iconData: Icons.phone,
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    controller: controller.passwordController,
                    validator: null,
                    labelText: "كلمة المرور",
                    iconData: Icons.lock,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("تذكرني؟"),
                      Checkbox(
                        value: controller.rememberMe,
                        onChanged: (val) {
                          controller.rememberMeToggle(val);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Get.to(() => ForgetPassword());
                        },
                        child: Text("هل نسيت كلمة المرور؟"),
                      ),
                    ],
                  ),
                  CustomSubmitButton(
                    onTap: () => controller.login(),
                    text: "تسجيل الدخول",
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Text("ليس لديك حساب؟ "),
                      InkWell(
                        onTap: () {
                          Get.to(() => RegisterScreen());
                        },

                        child: Text(
                          " انشاء حساب ",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
