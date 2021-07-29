import 'package:endcovi/pages/dashboard/dashboard_controller.dart';
import 'package:endcovi/pages/dashboard/dashboard_page.dart';
import 'package:endcovi/pages/login/auth_controller.dart';
import 'package:endcovi/pages/splash/splash_controller.dart';
import 'package:endcovi/pages/splash/splash_page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Root extends GetWidget<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<DashboardController>(DashboardController());
      },
      builder: (_) {
        return DashboardPage();
      },
    );
  }
}
