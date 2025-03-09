import 'package:blood_bank/features/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
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
                      (index) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor:
                              controller.currentPage == index
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).disabledColor,
                        ),
                      ),
                    ),
                    const Spacer(),
                    FloatingActionButton(
                      backgroundColor: Theme.of(context).disabledColor,
                      onPressed: () => controller.next(),
                      child: Icon(
                        controller.currentPage == 2
                            ? Icons.done
                            : Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
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
