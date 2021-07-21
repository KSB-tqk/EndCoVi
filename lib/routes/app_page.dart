import 'package:endcovi/pages/dashboard/dashboard_binding.dart';
import 'package:endcovi/pages/dashboard/dashboard_page.dart';
import 'package:endcovi/pages/home/home_page.dart';
import 'package:endcovi/pages/login/auth_binding.dart';
import 'package:endcovi/pages/login/login_page.dart';
import 'package:endcovi/pages/login/signup_page.dart';
import 'package:endcovi/pages/login/welcome_page.dart';
import 'package:endcovi/pages/splash/splash_page.dart';
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
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomePage(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignUpPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
    )
  ];
}
