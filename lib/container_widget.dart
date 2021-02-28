import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Container Example"),
      ),
      body: Container(
        padding: EdgeInsets.all(35),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 4),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(color: Colors.green, offset: Offset(6.0, 6.1)),
          ],
        ),
        child: Text(
          "Hello! I am in the container widget decoration box!",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
