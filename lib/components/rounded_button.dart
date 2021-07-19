import 'package:endcovi/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press(),
    this.color = kPrimaryColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 60,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(29.0),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
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
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
              backgroundColor: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
