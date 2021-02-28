import 'package:flutter/material.dart';
import 'package:improve/container_widget.dart';
import 'package:improve/gesture_detector.dart';
import 'package:improve/scaffold_widget.dart';
import 'package:improve/state_m.dart';
import 'complex_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Building Complex Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ContainerWidget(),
    );
  }
}
