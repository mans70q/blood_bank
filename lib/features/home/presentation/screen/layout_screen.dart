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
          body: SafeArea(
            child: controller.screens[controller.currentIndex.value],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: controller.items,
            currentIndex: controller.currentIndex.value,
            selectedIconTheme: IconThemeData(color: AppColors.white),
            unselectedIconTheme: IconThemeData(color: AppColors.white),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: AppColors.primary,
            onTap: (index) => {controller.changeIndex(index)},
          ),
        );
      },
    );
  }
}
