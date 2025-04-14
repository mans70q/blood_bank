import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/styles/colors.dart';
import '../../controller/layout_controller.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LayoutController());
    return GetBuilder<LayoutController>(
      builder: (controller) {
        return Scaffold(
          body: controller.screens[controller.currentIndex.value],
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              height: 50,
              indicatorColor: AppColors.secondary,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              backgroundColor: AppColors.primary,
              iconTheme: MaterialStateProperty.all(
                IconThemeData(color: AppColors.white),
              ),
            ),
            child: NavigationBar(
              selectedIndex: controller.currentIndex.value,
              onDestinationSelected: (index) => controller.changeIndex(index),
              destinations: controller.items,
            ),
          ),
        );
      },
    );
  }
}
