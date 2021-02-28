import 'package:flutter/material.dart';
import 'Flutter Basics/gesture_detector.dart';
import 'Flutter Widgets/scaffold_widget.dart';
import 'Flutter Basics/state_management.dart';
import 'Flutter Widgets/container_widget.dart';
import 'Flutter Basics/complex_layout.dart';

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
