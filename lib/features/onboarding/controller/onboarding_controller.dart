import 'package:blood_bank/features/onboarding/data/data_source/onboarding_data.dart';
import 'package:blood_bank/features/onboarding/data/model/onboarding_model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';

class OnboardingController extends GetxController {
  late PageController pageController;
  int currentPage = 0;

  List<OnboardingModel> onboardingList = OnboardingData.onboardingList;

  next() {
    if (currentPage != onboardingList.length - 1) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
      update();
    } else {
      Get.toNamed('/login');
    }
  }

  onPageChanged(int page) {
    currentPage = page;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
  }
}
