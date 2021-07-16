import 'package:endcovi/components/OutlineButton.dart';
import 'package:endcovi/components/RoundedButton.dart';
import 'package:endcovi/constants.dart';
import 'package:endcovi/pages/welcome_page/widgets/welcome_page_background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.height * 0.1,
              ),
              Image.asset("assets/images/welcome_phone_image.png"),
              SizedBox(
                width: size.height * 0.1,
              ),
              RoundedButton(
                text: "SIGN IN",
                press: () {},
                textColor: Colors.white,
              ),
              SizedBox(
                width: size.height * 0.1,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.6,
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
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
