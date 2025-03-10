import 'package:blood_bank/features/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDots extends GetView<OnboardingController> {
  const CustomDots(this.index, {super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CircleAvatar(
        radius: 5,
        backgroundColor:
            controller.currentPage == index
                ? Theme.of(context).primaryColor
                : Theme.of(context).disabledColor,
      ),
    );
  }
}
