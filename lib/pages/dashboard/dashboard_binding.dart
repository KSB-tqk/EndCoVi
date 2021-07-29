import 'package:endcovi/pages/dashboard/dashboard_controller.dart';
import 'package:endcovi/pages/home/home_controller.dart';
import 'package:endcovi/pages/profile/profile_controller.dart';
import 'package:endcovi/pages/splash/splash_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
