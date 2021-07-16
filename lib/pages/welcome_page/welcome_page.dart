import 'package:endcovi/constants.dart';
import 'package:endcovi/pages/welcome_page/welcome_page_controller.dart';
import 'package:endcovi/pages/welcome_page/widgets/welcome_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WelcomePageBody();
  }
}
