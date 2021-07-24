import 'package:endcovi/routes/app_routes.dart';
import 'package:endcovi/services/auth_service.dart';
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
      new Future.delayed(const Duration(milliseconds: 2640), () {
        Get.offNamed(Routes.WELCOME);
      });
    } else {
      new Future.delayed(const Duration(milliseconds: 1320), () {
        Get.offAllNamed(Routes.DASHBOARD);
      });
    }
  }
}
