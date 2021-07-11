import 'package:endcovi/pages/friend/friend_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FriendPage extends GetView<FriendController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Friend Page", style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
