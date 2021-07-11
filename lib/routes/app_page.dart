import 'package:endcovi/pages/dashboard/dashboard_binding.dart';
import 'package:endcovi/pages/dashboard/dashboard_page.dart';
import 'package:endcovi/pages/home/home_page.dart';
import 'package:endcovi/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
