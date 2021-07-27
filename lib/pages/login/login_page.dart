import 'package:endcovi/components/rounded_button.dart';
import 'package:endcovi/components/rounded_input_field.dart';
import 'package:endcovi/components/rounded_password_field.dart';
import 'package:endcovi/constants.dart';
import 'package:endcovi/pages/login/auth_controller.dart';
import 'package:endcovi/pages/login/widgets/login_background.dart';
import 'package:endcovi/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      resizeToAvoidBottomInset: false,
      body: LoginBackground(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
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
                RoundedButton(
                  text: "SIGN IN",
                  height: _height,
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      controller.loginWithEmailAndPassword();
                    }
                  },
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account ? ",
                      style: TextStyle(color: Colors.black54),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed(Routes.SIGNUP);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
