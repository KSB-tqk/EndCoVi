import 'package:endcovi/constants.dart';
import 'package:endcovi/pages/login/auth_controller.dart';
import 'package:endcovi/pages/profile/profile_controller.dart';
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: Colors.white70),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 36,
                          ),
                          Container(
                            height: size.height * 0.2,
                            child: InkWell(
                              onTap: () => controller.getAndUploadImage(),
                              child: GetBuilder(
                                builder: (ProfileController controller) {
                                  if (AuthController.endcoviUser!.avatarUrl ==
                                      "empty") {
                                    return CircleAvatar(
                                      radius: 100,
                                      backgroundImage:
                                          controller.image.path != "null"
                                              ? FileImage(controller.image)
                                              : null,
                                      backgroundColor: kPrimaryLightColor,
                                    );
                                  } else if (controller.image.path == "null") {
                                    return CircleAvatar(
                                      radius: 100,
                                      backgroundImage: NetworkImage(
                                          "${AuthController.endcoviUser!.avatarUrl}"),
                                      backgroundColor: Colors.grey,
                                    );
                                  } else {
                                    return CircleAvatar(
                                      radius: 100,
                                      backgroundImage:
                                          FileImage(controller.image),
                                      backgroundColor: kPrimaryColor,
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              height: 20,
                              child: Text(
                                  AuthController.endcoviUser!.mail.toString())),
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
