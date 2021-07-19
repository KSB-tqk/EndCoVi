import 'package:endcovi/components/text_field_container.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  final TextEditingController controller;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    this.hintText = "Your Password",
    required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        textInputAction: TextInputAction.next,
        controller: controller,
        validator: (val) =>
            val!.isNotEmpty ? null : "Password Cannot be blank!",
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black38),
            borderRadius: BorderRadius.circular(29),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
            borderRadius: BorderRadius.circular(29),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(29),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black38),
            borderRadius: BorderRadius.circular(29),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.black26,
          ),
        ),
      ),
    );
  }
}
