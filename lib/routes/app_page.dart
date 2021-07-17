import 'package:endcovi/pages/dashboard/dashboard_binding.dart';
import 'package:endcovi/pages/dashboard/dashboard_page.dart';
import 'package:endcovi/pages/home/home_page.dart';
import 'package:endcovi/pages/login/login_binding.dart';
import 'package:endcovi/pages/login/login_page.dart';
import 'package:endcovi/pages/welcome_page/welcome_page.dart';
import 'package:endcovi/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomePage(),
    )
  ];
}
