import 'package:endcovi/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  final double height;
  final bool useDefaultHeight;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press(),
    this.color = kPrimaryColor,
    required this.textColor,
    this.height = 0,
    this.useDefaultHeight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: useDefaultHeight ? size.height * 0.1 : height,
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(29.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Material(
          child: TextButton(
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: textColor),
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              backgroundColor: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
