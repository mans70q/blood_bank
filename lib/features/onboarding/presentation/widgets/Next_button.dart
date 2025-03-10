import 'package:blood_bank/features/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextButton extends GetView<OnboardingController> {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).disabledColor,
      onPressed: () => controller.next(),
      child: Icon(
        controller.currentPage == 2
            ? Icons.done
            : Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    );
  }
}
