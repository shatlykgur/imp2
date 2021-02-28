import 'package:flutter/material.dart';

class StateManagement extends StatefulWidget {
  @override
  _StateManagementState createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
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
