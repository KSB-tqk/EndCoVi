import 'package:endcovi/constants.dart';
import 'package:endcovi/pages/welcome_page/welcome_page.dart';
import 'package:endcovi/routes/app_page.dart';
import 'package:endcovi/routes/app_routes.dart';
import 'package:endcovi/value/lang/localization_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EndCoVi',
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      initialRoute: Routes.WELCOME,
      getPages: AppPages.list,
      translations: LocalizationService(),
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
    );
  }
}
