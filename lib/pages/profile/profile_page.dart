import 'package:endcovi/constants.dart';
import 'package:endcovi/models/endcovi_user.dart';
import 'package:endcovi/pages/dashboard/dashboard_controller.dart';
import 'package:endcovi/pages/home/home_controller.dart';
import 'package:endcovi/pages/login/auth_controller.dart';
import 'package:endcovi/pages/profile/profile_controller.dart';
import 'package:endcovi/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/InfoBar.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.find<ProfileController>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: size.height * 0.4,
                      decoration: BoxDecoration(color: Colors.white70),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 36,
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: null,
                            backgroundColor: kPrimaryLightColor,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              height: 20,
                              child: Text(AuthController.endcoviUser!.userName
                                  .toString())),
                          SizedBox(
                            height: 6,
                          ),
                          InfoBar(),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Profile Page", style: TextStyle(fontSize: 20)),
                        TextButton(
                          onPressed: () => AuthController().signOutWithEmail(),
                          child: Text(
                            "Sign Out",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
