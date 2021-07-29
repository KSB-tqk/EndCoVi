import 'package:endcovi/constants.dart';
import 'package:endcovi/pages/dashboard/dashboard_controller.dart';
import 'package:endcovi/pages/friend/friend_page.dart';
import 'package:endcovi/pages/home/home_page.dart';
import 'package:endcovi/pages/message/message_page.dart';
import 'package:endcovi/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  final DashboardController dashboardController =
      Get.find<DashboardController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                MessagePage(),
                FriendPage(),
                ProfilePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black38,
            selectedItemColor: kPrimaryColor,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: Icons.home_filled,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: Icons.message,
                label: 'Message',
              ),
              _bottomNavigationBarItem(
                icon: Icons.person_add,
                label: 'Alerts',
              ),
              _bottomNavigationBarItem(
                icon: Icons.person_pin,
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
