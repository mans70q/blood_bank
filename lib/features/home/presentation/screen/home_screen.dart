import 'package:flutter/material.dart';

import '../../../../core/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: " المقالات ",),
              Tab(text: " طلبات التبرع ",),
            ],
            indicatorColor: AppColors.white,
            labelColor: AppColors.white,
            unselectedLabelColor: AppColors.white,
          ),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.green[100]),
            Container(color: Colors.blue[100]),
          ],
        ),
      ),
    );
  }
}