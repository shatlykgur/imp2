import 'dart:ui';

import 'package:flutter/material.dart';

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
      home: MyHomePage(title: "Complex layout example"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
        children: [
          ProductBox(
            name: "iPhone",
            description: "iPhone is the top branded phone ever",
            price: 1000,
            image: "iphone12.png",
          ),
          ProductBox(
            name: "Android",
            description: "Android is very stylish phone",
            price: 900,
            image: "samsung.jpg",
          ),
          ProductBox(
            name: "Tablet",
            description: "Tablet is a popular device for official meetings",
            price: 650,
            image: "ipad.jpg",
          ),
          ProductBox(
            name: "Laptop",
            description: "Laptop is most famous electronic device",
            price: 3000,
            image: "laptop.jpg",
          ),
          ProductBox(
            name: "Desktop",
            description: "Desktop is most popular for regular use",
            price: 2000,
            image: "computer.jpg",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 110,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/" + image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(this.name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(this.description),
                    Text("Price:" + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
