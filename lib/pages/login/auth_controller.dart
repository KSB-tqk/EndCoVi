import 'dart:io';
import 'package:endcovi/models/endcovi_user.dart';
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

  late Rx<User> firebaseUser;
  static EndCoViUser? endcoviUser;
  static File? userImage;
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
        uid: user.uid,
        userName: user.displayName ?? 'default_username'.tr,
        mail: user.email ?? "empty",
        avatarUrl: user.photoURL ?? "empty",
        bio: "empty",
        address: "empty",
        gender: "empty",
      );
      if (await UserService.instance.addUser(tempUser)) {
        AuthController.endcoviUser = tempUser;
      }
    } else {
      AuthController.endcoviUser = await UserService.instance.getUser(user.uid);
    }
  }

  signOutWithEmail() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN);
    AuthController.endcoviUser = new EndCoViUser();
  }
}
