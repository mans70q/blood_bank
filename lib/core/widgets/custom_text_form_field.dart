import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.inputType,
    required this.labelText,
    required this.iconData,
    this.validator,
  });
  final TextEditingController controller;
  final TextInputType? inputType;
  final String labelText;
  final IconData iconData;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.phone,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        prefixIcon: Icon(iconData),
        labelText: labelText,
      ),
    );
  }
}
