import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'message_controller.dart';

class MessagePage extends GetView<MessageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.add_circle),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            "Message Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
