import 'package:endcovi/routes/app_routes.dart';
import 'package:endcovi/services/auth/auth_services.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    intilizeFirebase();
  }

  intilizeFirebase() async {
    await AuthenticService.instance.initializeFirebase();

    final user = AuthenticService.instance.getCurrentUser();

    if (user == null) {
      new Future.delayed(const Duration(seconds: 2), () {
        Get.offNamed(Routes.WELCOME);
      });
    } else {
      new Future.delayed(const Duration(seconds: 1), () {
        Get.offAllNamed(Routes.DASHBOARD);
      });
    }
  }
}
