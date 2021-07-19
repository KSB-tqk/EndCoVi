import 'package:endcovi/routes/app_routes.dart';
import 'package:endcovi/services/auth/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  loginWithEmailAndPassword() async {
    await AuthenticService.instance
        .login(emailController.text, passwordController.text);
  }

  signUpWithEmailAndPassword() async {
    await AuthenticService.instance
        .createUser(emailController.text, passwordController.text);
  }

  signOutWithEmail() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
