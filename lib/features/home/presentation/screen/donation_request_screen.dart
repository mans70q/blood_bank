import 'package:blood_bank/features/home/controller/donation_request_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../../../core/styles/colors.dart';

class DonationRequestScreen extends GetView<DonationRequestController> {
  const DonationRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DonationRequestController());
    return Scaffold(
      body: GetBuilder<DonationRequestController>(
        builder:
            (controller) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton(
                              underline: Container(),
                              items: controller.bloodType,
                              onChanged: (v) {
                                controller.setSelectedBloodType(v!);
                              },
                              value: controller.selectedBloodType,
                              icon: Icon(Icons.arrow_downward),
                              isExpanded: true,
                              hint: Text("فصيلة الدم"),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton(
                              underline: Container(),
                              items: controller.bloodType,
                              onChanged: (v) {
                                controller.setSelectedBloodType(v!);
                              },
                              value: controller.selectedBloodType,
                              icon: Icon(Icons.arrow_downward),
                              isExpanded: true,
                              hint: Text("فصيلة الدم"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 630,
                      width: double.infinity,
                      child: ListView.separated(
                        itemCount: 10,
                        separatorBuilder:
                            (context, index) => SizedBox(height: 20),
                        itemBuilder:
                            (_, index) => Slidable(
                              endActionPane: ActionPane(
                                motion: ScrollMotion(),
                                children: [
                                  SlidableAction(
                                    foregroundColor: AppColors.primary,
                                    icon: Icons.phone,
                                    onPressed: (context) {},
                                  ),
                                  SlidableAction(
                                    foregroundColor: AppColors.secondary,
                                    icon: Icons.info,
                                    onPressed: (context) {},
                                  ),
                                ],
                              ),
                              child: Card(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                child: ListTile(
                                  title: Text(
                                    "اسم الحاله : محمد محروس",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary,
                                    ),
                                  ),

                                  subtitle: Text(
                                    "المستشفى : القصر العيني \n المدينة : المنصورة",
                                  ),
                                  leading: Icon(
                                    Icons.person,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColors.white,
        heroTag: "add",
        onPressed: () {},
        child: Icon(Icons.add, color: AppColors.primary),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
