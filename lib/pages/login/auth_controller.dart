import 'package:endcovi/models/endcovi_user.dart';
import 'package:endcovi/pages/dashboard/dashboard_controller.dart';
import 'package:endcovi/routes/app_routes.dart';
import 'package:endcovi/services/auth_service.dart';
import 'package:endcovi/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  User? user;
  loginWithEmailAndPassword() async {
    user = await AuthenticService.instance
        .login(emailController.text, passwordController.text);
    await loadUser(user);
  }

  signUpWithEmailAndPassword() async {
    await AuthenticService.instance
        .createUser(emailController.text, passwordController.text);
    await loadUser(user);
  }

  static Future loadUser(User? user) async {
    bool isExist = await UserService.instance.isUserExisted(user!);
    if (!isExist) {
      EndCoViUser tempUser = EndCoViUser(
        user.uid,
        user.displayName ?? 'default_username'.tr,
        user.email ?? "",
        user.photoURL ?? "",
        "",
        "",
        "",
      );
      if (await UserService.instance.addUser(tempUser)) {
        DashboardController.mainUser = tempUser;
      }
    } else {
      DashboardController.mainUser =
          await UserService.instance.getUser(user.uid);
    }
  }

  signOutWithEmail() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN);
    Get.find<DashboardController>().clear();
  }
}
