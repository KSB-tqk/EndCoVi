import 'package:endcovi/components/rounded_button.dart';
import 'package:endcovi/components/rounded_input_field.dart';
import 'package:endcovi/components/rounded_password_field.dart';
import 'package:endcovi/pages/login/auth_controller.dart';
import 'package:endcovi/pages/login/widgets/login_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  final AuthController controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBackground(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.height * 0.01,
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
                icon: Icons.person,
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (repeatValue) {},
                hintText: "Confirm Your Password",
              ),
              RoundedButton(
                text: "SIGN UP",
                press: () {},
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
