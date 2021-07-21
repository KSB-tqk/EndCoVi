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
      // Get.offNamed(Routes.WELCOME);
    } else {
      Get.offAllNamed(Routes.DASHBOARD);
    }
  }
}
