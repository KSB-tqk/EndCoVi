import 'package:endcovi/components/outline_button.dart';
import 'package:endcovi/components/rounded_button.dart';
import 'package:endcovi/constants.dart';
import 'package:endcovi/pages/login/widgets/welcome_page_background.dart';
import 'package:endcovi/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: size.height * 0.1,
              ),
              Expanded(
                flex: 6,
                child: Image.asset("assets/images/welcome_phone_image.png"),
              ),
              RoundedButton(
                text: "SIGN IN",
                press: () {
                  Get.toNamed(Routes.LOGIN);
                },
                textColor: Colors.white,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                width: size.width * 0.8,
                child: Material(
                  child: RoundedOutlineButton(
                    strokeWidth: 4,
                    radius: 29,
                    gradient: LinearGradient(
                        colors: [startLinearColor, endLinearColor]),
                    child: Center(
                      child: Text('SIGN UP',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor)),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.SIGNUP);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
