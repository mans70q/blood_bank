import 'package:blood_bank/core/constant/strings.dart';
import 'package:blood_bank/core/widgets/custom_text_form_field.dart';
import 'package:blood_bank/features/auth/presentation/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
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
                Checkbox(value: false, onChanged: (val) {}),
                Spacer(),
                InkWell(onTap: () {}, child: Text("هل نسيت كلمة المرور؟")),
              ],
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Text(
                  "تسجيل الدخول",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Text("ليس لديك حساب؟ "),
                InkWell(
                  onTap: () {
                    Get.to(() => RegisterScreen());
                  },

                  child: Text("انشاء حساب", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
