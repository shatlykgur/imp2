import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Layout Wwidget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox Widget"),
      ),
      body: Center(
        child: FittedBox(
          child: Row(
            children: [
              Container(
                child: Image.asset('assets/wallpaper.jpg'),
              ),
              Container(
                child: Text(
                  "This is widget",
                  style: TextStyle(fontSize: 300.0),
                ),
              ),
            ],
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
