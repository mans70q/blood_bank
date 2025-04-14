import 'package:blood_bank/features/home/presentation/screen/article_screen.dart';
import 'package:blood_bank/features/home/presentation/screen/donation_request_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildTabScreen() {
      return Scaffold(
        body: ArticleScreen(),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: AppColors.primary,
          heroTag: "add",
          onPressed: () {},
          child: Icon(Icons.add, color: AppColors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(color: AppColors.primary),
          ),
          bottom: TabBar(
            tabs: [Tab(text: " المقالات "), Tab(text: " طلبات التبرع ")],
            indicatorColor: AppColors.white,
            labelColor: AppColors.white,
            unselectedLabelColor: AppColors.white,
          ),
        ),
        body: TabBarView(children: [buildTabScreen(), DonationRequestScreen()]),
      ),
    );
  }
}
