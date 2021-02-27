import 'package:flutter/material.dart';

class StManagement extends StatefulWidget {
  @override
  _StManagementState createState() => _StManagementState();
}

class _StManagementState extends State<StManagement> {
  String _name = "Peter";

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(_name),
      onPressed: () {
        setState(() {
          _name = _name == "Peter" ? "John" : "Path";
        });
      },
    );
  }
}
