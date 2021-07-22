import 'package:endcovi/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: size.width * 0.7,
                    height: size.height * 0.07,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                startLinearColor,
                                endLinearColor
                              ])),
                              padding: EdgeInsets.all(10),
                              child: Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text(
                                        "Welcome to ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 18,
                                            decoration: TextDecoration.none,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "EndCoVi",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none,
                                            fontSize: 22,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/images/welcome_bar_line.png",
              ),
            ),
            Expanded(
              flex: 12,
              child: child,
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.bottomRight,
                  child:
                      Image.asset("assets/images/bottom_right_background.png")),
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
