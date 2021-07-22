import 'package:endcovi/constants.dart';
import 'package:endcovi/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  final SplashController controller = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(200),
                          topRight: Radius.circular(200),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Image.asset("assets/images/splash_page_background.png"),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(200),
                          topRight: Radius.circular(200),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset("assets/images/splash_page_logo.png"),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Obx(
                      () => SizedBox(
                        child: (controller.isLoading.value)
                            ? Lottie.asset(
                                "assets/lotties/loading_indicator.json",
                                width: 120,
                                height: 90,
                                fit: BoxFit.fill)
                            : Container(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
