import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/bottom_navigation_controller.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/views/screens/home_screen.dart';
import 'package:xfunding/views/screens/profile_screen.dart';

class BottomNavigationWidget extends StatelessWidget {
  BottomNavigationWidget({Key? key}) : super(key: key);

  final _controller = Get.put(BottomNavigationController());

  static List<StatelessWidget> mainScreens = [
    const HomeScreen(),
    const HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      body: mainScreens[_controller.getIndex()],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: CustomColor.primaryBackgroundColor,
        clipBehavior: Clip.hardEdge,
        notchMargin: 6,
        child: BottomNavigationBar(
          onTap: (index) => _controller.setIndex(index),
          backgroundColor: CustomColor.primaryColor,
          currentIndex: _controller.getIndex(),
          selectedItemColor: CustomColor.whiteColor,
          unselectedItemColor: CustomColor.whiteColor.withOpacity(0.5),
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 11,
          selectedFontSize: 12,
          elevation: 3,
          unselectedLabelStyle: const TextStyle(fontSize: 8),
          selectedLabelStyle: const TextStyle(fontSize: 12),
          items: BottomNavigationController.navigationBarItems,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColor.primaryColor,
        onPressed: () {
          Get.toNamed(Routes.createCampaignScreen);
        },
        child: const Icon(
          FontAwesomeIcons.fileInvoiceDollar,
          size: 25,
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
    ));
  }
}
