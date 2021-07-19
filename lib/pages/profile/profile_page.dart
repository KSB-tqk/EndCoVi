import 'package:endcovi/pages/login/auth_controller.dart';
import 'package:endcovi/pages/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Profile Page", style: TextStyle(fontSize: 20)),
              TextButton(
                onPressed: () => AuthController().signOutWithEmail(),
                child: Text("Sign Out"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
