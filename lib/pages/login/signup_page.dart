import 'package:endcovi/components/rounded_button.dart';
import 'package:endcovi/components/rounded_input_field.dart';
import 'package:endcovi/components/rounded_password_field.dart';
import 'package:endcovi/pages/login/auth_controller.dart';
import 'package:endcovi/pages/login/widgets/login_background.dart';
import 'package:endcovi/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final AuthController controller = Get.find<AuthController>();

  double _height = 56;
  GlobalKey _globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _height = _globalKey.currentContext!.size!.height;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: LoginBackground(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.height * 0.01,
                  ),
                  RoundedInputField(
                    controller: controller.emailController,
                    hintText: "Your Email",
                    onChanged: (value) {},
                    icon: Icons.person,
                  ),
                  RoundedPasswordField(
                    controller: controller.passwordController,
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    controller: controller.confirmPasswordController,
                    onChanged: (repeatValue) {},
                    hintText: "Confirm Your Password",
                  ),
                  RoundedButton(
                    text: "SIGN UP",
                    height: _height,
                    press: () => controller.signUpWithEmailAndPassword(),
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already have an account ? ",
                        style: TextStyle(color: Colors.black54),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAndToNamed(Routes.LOGIN);
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
