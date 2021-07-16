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
    return Container(
      color: Colors.white,
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: size.height * 0.1,
            left: 0,
            child: Column(
              children: <Widget>[
                Container(
                  width: size.width * 0.7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [startLinearColor, endLinearColor])),
                      padding: EdgeInsets.all(10),
                      child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Column(
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
                                  fontSize: 23,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/images/welcome_bar_line.png",
                  ),
                )
              ],
            ),
          ),
          child,
        ],
      ),
    );
  }
}
