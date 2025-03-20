import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  List<DropdownMenuItem<String>> genderItems = <DropdownMenuItem<String>>[
    DropdownMenuItem<String>(value: "ذكر", child: Text("Male")),
    DropdownMenuItem<String>(value: "انثى", child: Text("Female")),
  ];

}
