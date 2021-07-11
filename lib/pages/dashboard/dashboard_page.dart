import 'package:endcovi/pages/dashboard/dashboard_controller.dart';
import 'package:endcovi/pages/friend/friend_page.dart';
import 'package:endcovi/pages/home/home_page.dart';
import 'package:endcovi/pages/news/news_page.dart';
import 'package:endcovi/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class DashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<DashboardController>(builder: (controller) {
//       return Scaffold(
//         body: SafeArea(
//           child: IndexedStack(
//             index: controller.tabIndex,
//             children: [HomePage(), NewsPage(), FriendPage(), ProfilePage()],
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           selectedItemColor: Colors.redAccent,
//           unselectedItemColor: Colors.black,
//           onTap: controller.changeTabIndex,
//           currentIndex: controller.tabIndex,
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.home_filled, color: Colors.black),
//                 label: "Home"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.menu_book, color: Colors.black),
//                 label: "NewsFeed"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person_add, color: Colors.black),
//                 label: "Friend"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person_pin, color: Colors.black),
//                 label: "Profile")
//           ],
//         ),
//       );
//     });
//   }
// }

class DashboardPage extends StatelessWidget {
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
                NewsPage(),
                FriendPage(),
                ProfilePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
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
                icon: Icons.menu_book,
                label: 'News',
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
