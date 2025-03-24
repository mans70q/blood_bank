import 'package:blood_bank/features/home/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutController extends GetxController {
  RxInt currentIndex = 0.obs;
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: "Notification",
    ),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
  ];
  List<Widget> screens = [
    const HomeScreen(),
    Text("Profile"),
    Text("Notification"),
    Text("Settings"),
  ];

  void changeIndex(int index) {
    currentIndex.value = index;
    update();
  }
}
