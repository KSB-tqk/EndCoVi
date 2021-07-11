import 'package:endcovi/routes/app_page.dart';
import 'package:endcovi/routes/app_routes.dart';
import 'package:endcovi/value/lang/localization_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EndCoVi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
      translations: LocalizationService(),
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
    );
  }
}
