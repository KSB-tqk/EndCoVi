import 'package:endcovi/models/endcovi_user.dart';
import 'package:endcovi/pages/dashboard/dashboard_controller.dart';
import 'package:endcovi/pages/login/auth_controller.dart';
import 'package:endcovi/routes/app_routes.dart';
import 'package:endcovi/services/auth_service.dart';
import 'package:endcovi/services/user_service.dart';
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
      AuthController.endcoviUser = await UserService.instance.getUser(user.uid);
      Get.offNamed(Routes.DASHBOARD);
    }
  }
}
