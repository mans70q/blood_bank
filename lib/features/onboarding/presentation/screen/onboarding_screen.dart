import 'package:blood_bank/features/onboarding/controller/onboarding_controller.dart';
import 'package:blood_bank/features/onboarding/presentation/widgets/next_button.dart';
import 'package:blood_bank/features/onboarding/presentation/widgets/custom_dots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends GetView<OnboardingController> {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return Scaffold(
      body: GetBuilder<OnboardingController>(
        builder: (controller) {
          return Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: (value) => controller.onPageChanged(value),
                  itemCount: 3,
                  itemBuilder: (_, i) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(controller.onboardingList[i].image),
                        Text(controller.onboardingList[i].title),
                        Text(controller.onboardingList[i].description),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    ...List.generate(
                        3,
                            (index) =>CustomDots(index)
                    ),
                    const Spacer(),
                    NextButton(),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
