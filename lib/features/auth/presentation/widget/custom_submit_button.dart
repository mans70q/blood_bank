import 'package:flutter/material.dart';

class CustomSubmitButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const CustomSubmitButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 40,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Text("تسجيل الدخول", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
