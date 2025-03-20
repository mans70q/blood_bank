import 'package:blood_bank/features/auth/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/strings.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,

        alignment: Alignment.center,
        child: ListView(
          children: [
            Text(
              "انشاء حساب جديد",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.nameController,
              validator: null,
              labelText: "الاسم",
              iconData: Icons.person,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.emailController,
              labelText: "البريد الالكتروني",
              iconData: Icons.email,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.dateOfBirthController,
              labelText: "تاريخ الميلاد",
              inputType: TextInputType.datetime,
              iconData: Icons.calendar_month,
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButton(
                items: controller.genderItems,
                onChanged: (v) {},
                value: null,
                icon: Icon(Icons.arrow_downward),
                isExpanded: true,
                hint: Text("فصيلة الدم"),
              ),
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
                Text("لديك حساب بالفعل؟", style: TextStyle(fontSize: 20)),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppStrings.loginRoute);
                  },

                  child: Text("تسجيل الدخول", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
