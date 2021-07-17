import 'package:endcovi/components/OutlineButton.dart';
import 'package:endcovi/components/RoundedButton.dart';
import 'package:endcovi/constants.dart';
import 'package:endcovi/pages/login/login_page_controller.dart';
import 'package:endcovi/pages/login/widgets/login_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

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
                width: size.height * 0.1,
              ),
              SizedBox(
                width: size.height * 0.1,
              ),
              RoundedButton(
                text: "THIS IS LOGIN PAGE",
                press: () {},
                textColor: Colors.white,
              ),
              SizedBox(
                width: size.height * 0.1,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.6,
                child: Material(
                  child: RoundedOutlineButton(
                    strokeWidth: 4,
                    radius: 24,
                    gradient: LinearGradient(
                        colors: [startLinearColor, endLinearColor]),
                    child: Text('SIGN UP',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor)),
                    onPressed: () {
                      print("Sign up is clicked");
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
