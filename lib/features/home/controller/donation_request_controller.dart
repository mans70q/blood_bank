import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationRequestController extends GetxController {
  List<DropdownMenuItem<String>> bloodType = <DropdownMenuItem<String>>[
    DropdownMenuItem<String>(value: "A+", child: Text("A+")),
    DropdownMenuItem<String>(value: "A-", child: Text("A-")),
    DropdownMenuItem<String>(value: "B+", child: Text("B+")),
    DropdownMenuItem<String>(value: "B-", child: Text("B-")),
    DropdownMenuItem<String>(value: "O+", child: Text("O+")),
    DropdownMenuItem<String>(value: "O-", child: Text("O-")),
  ];
  String? selectedBloodType;
  setSelectedBloodType(String value) {
    selectedBloodType = value;
    update();
  }
}
